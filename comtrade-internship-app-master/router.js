module.exports = function (express, baza) {
  const router = express.Router()

  // login funkcija, stari metod
  router.get('/login/*/*', function (req, res) {
    // console.log(req.params)
    baza.execQuery(`SELECT id, username, ime, prezime, admin, slika FROM korisnici WHERE username = ${mysql.escape(req.params['0'])} AND password = ${mysql.escape(req.params['1'])}`, function (results) {
      // console.log('Korisnik je:')
      // console.log(results)
      res.send(results)
    })
  })

  // Login funkcija, pravilan metod
  router.post('/login', function (req, res) {
    baza.execQuery(`SELECT id, username, ime, prezime, admin, slika FROM korisnici WHERE username = ${mysql.escape(req.body.username)} AND password = ${mysql.escape(req.body.password)}`, function (results) {
      if (results.length > 0) {
        const tokenRnd = Math.floor(Math.random() * (100000000 - 10000000)) + 10000000
        const token = String(tokenRnd) + results[0].username
        res.cookie('loginCookie', token, { maxAge: new Date().getTime() + 30 * 24 * 60 * 60, httpOnly: true })
        baza.execQuery(`INSERT INTO login_tabela(korisnici_id, web_token) VALUES (${mysql.escape(results[0].id)}, ${mysql.escape(token)})`, function (resultsUgnjezdeniLogin) {
          if (resultsUgnjezdeniLogin.affectedRows === 1)
            res.send({ loggedIn: true, user: results });
        })
      }
      else {
        res.send({ loggedIn: false })
      }
    })
  })

  // Provera logina
  router.get('/check', function (req, res) {
    baza.execQuery(`SELECT * FROM login_tabela WHERE web_token = ${mysql.escape(req.cookies.loginCookie)}`, function (results) {
      if (results.length > 0) {
        res.send({ loggedIn: true })
      } else
        res.send({ loggedIn: false })
    })
  })

  // Logout funkcija
  router.get('/logout', function (req, res) {
    baza.execQuery(`DELETE FROM login_tabela WHERE web_token = ${mysql.escape(req.cookies.loginCookie)}`, function (results) {

    })
  })

  // nabavi spisak svih gradova
  router.get('/cities', function (req, res) {
    baza.execQuery(`SELECT * FROM login_tabela WHERE web_token = ${mysql.escape(req.cookies.loginCookie)}`, function (results) {
      if (results.length > 0) {
        baza.execQuery('SELECT * FROM grad', function (results) {
          res.send(results)
        })
      } else
        res.send({ loggedIn: false })
    })

  })

  // nabavi grad sa trazenim id-em
  router.get('/city/*', function (req, res) {
    baza.execQuery(`SELECT * FROM login_tabela WHERE web_token = ${mysql.escape(req.cookies.loginCookie)}`, function (results) {
      if (results.length > 0) {
        baza.execQuery(`SELECT * FROM grad WHERE id = ${mysql.escape(req.params[0])}`, function (results) {
          res.send(results)
        })
      } else
        res.send({ loggedIn: false })
    })
  })

  // nabavi spisak hotela u nekom gradu, gde je req.params id grada u kome se nalaze
  router.get('/hotels/*', function (req, res) {
    baza.execQuery(`SELECT * FROM login_tabela WHERE web_token = ${mysql.escape(req.cookies.loginCookie)}`, function (results) {
      if (results.length > 0) {
        baza.execQuery(`SELECT hotel.id, hotel.grad_id, hotel.ime, hotel.address, hotel.opis, hotel.latitude, hotel.longitude, hotel.url_booking, hotel.url_slike, AVG(feedback_hotel.rating) FROM hotel LEFT JOIN feedback_hotel ON hotel.id = feedback_hotel.hotel_id WHERE hotel.grad_id=
        ${mysql.escape(req.params['0'])} GROUP BY hotel.id`, function (results) {
            res.send(results)
          })
      } else
        res.send({ loggedIn: false })
    })

  })

  // nabavi hotel gde je req.params id hotela
  router.get('/hotel/*', function (req, res) {
    baza.execQuery(`SELECT * FROM login_tabela WHERE web_token = ${mysql.escape(req.cookies.loginCookie)}`, function (results) {
      if (results.length > 0) {
        baza.execQuery(`SELECT hotel.id, hotel.grad_id, hotel.ime, hotel.address, hotel.opis, hotel.latitude, hotel.longitude, hotel.url_booking, hotel.url_slike, AVG(feedback_hotel.rating) FROM hotel INNER JOIN feedback_hotel ON hotel.id = feedback_hotel.hotel_id WHERE hotel.id=${mysql.escape(req.params['0'])}`, function (results) {
          res.send(results)
        })
      } else
        res.send({ loggedIn: false })
    })
  })

  // nabavi sve slike hotela gde je req.params id hotela
  router.get('/hotel-images/*', function (req, res) {
    baza.execQuery(`SELECT * FROM login_tabela WHERE web_token = ${mysql.escape(req.cookies.loginCookie)}`, function (results) {
      if (results.length > 0) {
        baza.execQuery(`SELECT * FROM slike_hotela WHERE hotel_id=${mysql.escape(req.params['0'])}`, function (results) {
          res.send(results)
        })
      } else
        res.send({ loggedIn: false })
    })
  })

  // nabavi spisak znamenitosti u nekom gradu, gde je req.params id grada u kome se nalaze
  router.get('/attractions/*', function (req, res) {
    baza.execQuery(`SELECT * FROM login_tabela WHERE web_token = ${mysql.escape(req.cookies.loginCookie)}`, function (results) {
      if (results.length > 0) {
        baza.execQuery(`SELECT * FROM znamenitosti WHERE grad_id=${mysql.escape(req.params['0'])}`, function (results) {
          res.send(results)
        })
      } else
        res.send({ loggedIn: false })
    })
  })

  // GETOVI ZA FEEDBACK
  // nabavi sav feedback za neki grad, gde je req.params id relevantnog grada
  router.get('/feedback-grad/*', function (req, res) {
    baza.execQuery(`SELECT * FROM login_tabela WHERE web_token = ${mysql.escape(req.cookies.loginCookie)}`, function (results) {
      if (results.length > 0) {
        baza.execQuery(`SELECT korisnici.username, korisnici.ime, korisnici.prezime, korisnici.slika, feedback_grad.id, feedback_grad.rating, feedback_grad.naziv, feedback_grad.opis, feedback_grad.datum FROM feedback_grad INNER JOIN korisnici on feedback_grad.korisnici_id = korisnici.id WHERE feedback_grad.grad_id = ${mysql.escape(req.params['0'])}`, function (results) {
          res.send(results)
        })
      } else
        res.send({ loggedIn: false })
    })
  })

  // nabavi sve komentare vezane za odredjeni feedback na grad, gde je req.params id relevantnog feedbacka
  router.get('/komentar-grad/*', function (req, res) {
    baza.execQuery(`SELECT * FROM login_tabela WHERE web_token = ${mysql.escape(req.cookies.loginCookie)}`, function (results) {
      if (results.length > 0) {
        baza.execQuery(`SELECT korisnici.username, korisnici.ime, korisnici.prezime, korisnici.slika, komentari_grad.text, komentari_grad.datum, komentari_grad.id 
        FROM komentari_grad INNER JOIN korisnici on korisnici.id = komentari_grad.korisnici_id 
        WHERE komentari_grad.feedback_grad_id = ${mysql.escape(req.params['0'])}`, function (results) {
        res.send(results)
      })
      } else
        res.send({ loggedIn: false })
    })
    
  })

  // nabavi sav feedback za neki hotel, gde je req.params id relevantnog hotela
  router.get('/feedback-hotel/*', function (req, res) {
    baza.execQuery(`SELECT * FROM login_tabela WHERE web_token = ${mysql.escape(req.cookies.loginCookie)}`, function (results) {
      if (results.length > 0) {
        baza.execQuery(`SELECT korisnici.username, korisnici.ime, korisnici.prezime, korisnici.slika, feedback_hotel.id, feedback_hotel.rating, feedback_hotel.naziv, feedback_hotel.opis, feedback_hotel.datum FROM feedback_hotel INNER JOIN korisnici on feedback_hotel.korisnici_id = korisnici.id WHERE feedback_hotel.hotel_id = ${mysql.escape(req.params['0'])}`, function (results) {
          res.send(results)
        })
      } else
        res.send({ loggedIn: false })
    })
  })

  // nabavi sve komentare vezane za odredjeni feedback na hotel, gde je req.params id relevantnog feedbacka
  router.get('/komentar-hotel/*', function (req, res) {
    baza.execQuery(`SELECT * FROM login_tabela WHERE web_token = ${mysql.escape(req.cookies.loginCookie)}`, function (results) {
      if (results.length > 0) {
        baza.execQuery(`SELECT korisnici.username, korisnici.ime, korisnici.prezime, korisnici.slika, komentari_hotel.text, komentari_hotel.datum, komentari_hotel.id
        FROM komentari_hotel INNER JOIN korisnici on korisnici.id = komentari_hotel.korisnici_id 
        WHERE komentari_hotel.feedback_hotel_id = ${mysql.escape(req.params['0'])}`, function (results) {
          res.send(results)
        })
      } else
        res.send({ loggedIn: false })
    })
  })

  // POSTOVI ZA FEEDBACK
  // okaci feedback za hotel
  router.post('/post-feedback-hotel', function (req, res) {
    baza.execQuery(`SELECT * FROM login_tabela WHERE web_token = ${mysql.escape(req.cookies.loginCookie)}`, function (results) {
      if (results.length > 0) {
        baza.execQuery(`INSERT INTO feedback_hotel(hotel_id, korisnici_id, rating, naziv, opis) VALUES (${mysql.escape(req.body.hotelId)}, ${mysql.escape(req.body.korisniciId)}, ${mysql.escape(req.body.rating)},${mysql.escape(req.body.naziv)}, ${mysql.escape(req.body.opis)})`, function (results) {
          res.send({ poslato: true })
        })
      } else
        res.send({ loggedIn: false })
    })
  })

  // okaci komentar na feedback za hotel
  router.post('/post-comment-hotel', function (req, res) {
    baza.execQuery(`SELECT * FROM login_tabela WHERE web_token = ${mysql.escape(req.cookies.loginCookie)}`, function (results) {
      if (results.length > 0) {
        baza.execQuery(`INSERT INTO komentari_hotel(korisnici_id, feedback_hotel_id, text) VALUES (${mysql.escape(req.body.korisniciId)}, ${mysql.escape(req.body.feedbackId)}, ${mysql.escape(req.body.text)})`, function (results) {
          res.send({ poslato: true })
        })
      } else
        res.send({ loggedIn: false })
    })
  })

  // okaci feedback za grad
  router.post('/post-feedback-city', function (req, res) {
    baza.execQuery(`SELECT * FROM login_tabela WHERE web_token = ${mysql.escape(req.cookies.loginCookie)}`, function (results) {
      if (results.length > 0) {
        baza.execQuery(`INSERT INTO feedback_grad(grad_id, korisnici_id, rating, naziv, opis) VALUES (${mysql.escape(req.body.gradId)}, ${mysql.escape(req.body.korisniciId)}, ${mysql.escape(req.body.rating)},${mysql.escape(req.body.naziv)}, ${mysql.escape(req.body.opis)})`, function (results) {
          res.send({ poslato: true })
        })
      } else
        res.send({ loggedIn: false })
    })
  })

  // okaci komentar na feedback za grad
  router.post('/post-comment-city', function (req, res) {
    baza.execQuery(`SELECT * FROM login_tabela WHERE web_token = ${mysql.escape(req.cookies.loginCookie)}`, function (results) {
      if (results.length > 0) {
        baza.execQuery(`INSERT INTO komentari_grad(korisnici_id, feedback_grad_id, text) VALUES (${mysql.escape(req.body.korisniciId)}, ${mysql.escape(req.body.feedbackId)}, ${mysql.escape(req.body.text)})`, function (results) {
          res.send({ poslato: true })
        })
      } else
        res.send({ loggedIn: false })
    })
  })

  // DELETE Zahtevi za feedback
  // obrisi komentar za hotel po id-u
  router.delete('/delete-comment-hotel', function (req, res) {
    baza.execQuery(`SELECT * FROM korisnici INNER JOIN login_tabela on korisnici.id = login_tabela.korisnici_id where korisnici.admin = '1' AND login_tabela.web_token = ${mysql.escape(req.cookies.loginCookie)}`, function (results) {
      if (results.length > 0) {
        baza.execQuery(`DELETE FROM komentari_hotel WHERE id = ${mysql.escape(req.body.commentId)}`, function(deletionResults){
          // if(deletionResults.length > 0)
          res.send({msg: 'Comment deleted'})
        })
      } else {
        res.send({msg: 'You do not have admin privileges'})
        console.log('You do not have admin privileges')
      }
    })
  })

  // obrisi komentar za grad po id-u
  router.delete('/delete-comment-city', function (req, res) {
    baza.execQuery(`SELECT * FROM korisnici INNER JOIN login_tabela on korisnici.id = login_tabela.korisnici_id where korisnici.admin = '1' AND login_tabela.web_token = ${mysql.escape(req.cookies.loginCookie)}`, function (results) {
      if (results.length > 0) {
        baza.execQuery(`DELETE FROM komentari_grad WHERE id = ${mysql.escape(req.body.commentId)}`, function(deletionResults){
          // if(deletionResults.length > 0)
          res.send({msg: 'Comment deleted'})
        })
      } else {
        res.send({msg: 'You do not have admin privileges'})
        console.log('You do not have admin privileges')
      }
    })
  })

  // obrisi feedback za hotel
  router.delete('/delete-feedback-hotel', function (req, res) {
    baza.execQuery(`SELECT * FROM korisnici INNER JOIN login_tabela on korisnici.id = login_tabela.korisnici_id where korisnici.admin = '1' AND login_tabela.web_token = ${mysql.escape(req.cookies.loginCookie)}`, function (results) {
      if (results.length > 0) {
        baza.execQuery(`DELETE FROM komentari_hotel WHERE feedback_hotel_id = ${mysql.escape(req.body.feedbackId)}`, function(results) {
          baza.execQuery(`DELETE FROM feedback_hotel WHERE id = ${mysql.escape(req.body.feedbackId)}`, function(results) {
            res.send({msg: 'Obrisani feedback i komentari'})
          })
        })
      } else {
        res.send({msg: 'You do not have admin privileges'})
        console.log('You do not have admin privileges')
      }
    })
  })

  // obrisi feedback za grad
  router.delete('/delete-feedback-grad', function (req, res) {
    baza.execQuery(`SELECT * FROM korisnici INNER JOIN login_tabela on korisnici.id = login_tabela.korisnici_id where korisnici.admin = '1' AND login_tabela.web_token = ${mysql.escape(req.cookies.loginCookie)}`, function (results) {
      if (results.length > 0) {
        baza.execQuery(`DELETE FROM komentari_grad WHERE feedback_grad_id = ${mysql.escape(req.body.feedbackId)}`, function(results) {
          baza.execQuery(`DELETE FROM feedback_grad WHERE id = ${mysql.escape(req.body.feedbackId)}`, function(results) {
            res.send({msg: 'Obrisani feedback i komentari'})
          })
        })
      } else {
        res.send({msg: 'You do not have admin privileges'})
        console.log('You do not have admin privileges')
      }
    })
  })

  return router
}