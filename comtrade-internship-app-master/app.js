const express = require('express')
const path = require('path')
const app = express()
const port = 3000
const cookieParser = require('cookie-parser');
mysql = require('mysql')
// const cities = require('./baza/cities.json')
// const hotels = require('./baza/hotels.json')

app.use(express.urlencoded({ extended: true }))
app.use(express.json())

app.use(cookieParser())
app.use(express.static(path.join(__dirname, 'public')))

app.listen(port, () => {
  console.log('Server radi na portu: ' + port)
})

const dbData = {
  host: '127.0.0.1',
  user: 'root',
  password: '',
  database: 'bta_baza',
  connectionLimit: 10000,
  debug: false
}

const baza = require('./sql-funkcije')
baza.createPool(dbData)

const router = require('./router')(express, baza)
app.use(router)

/***
  ===============================
    Funkcije za popunjavanje baze
  ===============================
***/

// dodavanje slike u slike hotela, jedna po hotelu
// let brojacIdSlike = 1
// let brojacHotel = 1
// hotels.forEach(grad => {
//   // console.log(grad.id)
//   grad[Object.keys(grad)[1]].forEach(hotel => {
//     // console.log(hotel.img);
//     // console.log(brojac)
//     baza.execQuery(`INSERT INTO slike_hotela(id, hotel_id, url_slike) VALUES (${mysql.escape(brojacIdSlike)}, ${mysql.escape(brojacIdSlike)}, ${mysql.escape(hotel.img)})`, function (results) {
//     })
//     brojacIdSlike++
//   })
// })

// dodavanje slika u slike hotela, 5 po hotelu
// let brojacIdSlike = 451
// let brojacHotel = 91
// hotels[9].moscow.forEach(hotel => {
//   for (let index = 0; index < 5; index++) {
//     // console.log(hotel.images[index])
//     baza.execQuery(`INSERT INTO slike_hotela(id, hotel_id, url_slike) VALUES (${mysql.escape(brojacIdSlike)}, ${mysql.escape(brojacHotel)}, ${mysql.escape(hotel.images[index])})`, function (results) {
//     })
//     brojacIdSlike++
//   }
//   brojacHotel++
// })

//dodavanje slike u hotel u polje url_slike
// let brojacIdSlike = 1
// // let brojacHotel = 1
// hotels.forEach(grad => {
//   // console.log(grad.id)
//   grad[Object.keys(grad)[1]].forEach(hotel => {
//     // console.log(hotel.img);
//     // console.log(brojac)
//     baza.execQuery(`UPDATE hotel SET url_slike=${mysql.escape(hotel.img)} WHERE id = ${mysql.escape(brojacIdSlike)}`, function (results) {
//     })
//     brojacIdSlike++
//   })
// })

// dodavanje hotela
// let brojac = 1
// hotels.forEach(grad => {
//   grad[Object.keys(grad)[1]].forEach(hotel => {
//     baza.execQuery(`INSERT INTO hotel(id, grad_id, ime, address, opis, latitude, longitude, url_booking) VALUES (${mysql.escape(brojac)},${mysql.escape(grad.id)},${mysql.escape(hotel.hotel_name)},${mysql.escape(hotel.address)},${mysql.escape(hotel.description)},${mysql.escape(hotel.lat)},${mysql.escape(hotel.lng)},${mysql.escape(hotel.url)})`, function (results) {
//     })
//     brojac++
//   })
// })

// dodavanje znamenitosti
// cities.forEach(grad => {
//   grad.things_to_do.forEach(znamen => {
//     baza.execQuery(`INSERT INTO znamenitosti(grad_id, naziv, slika, opis, latitude, longitude) VALUES (${mysql.escape(grad.id)}, ${mysql.escape(znamen.name)}, ${mysql.escape(znamen.img)}, ${mysql.escape(znamen.description)}, ${mysql.escape(znamen.lat)}, ${mysql.escape(znamen.lng)})`, function(results) {
//       console.log(results)
//     })
//   })
// })

// dodavanje gradova
// cities.forEach(element => {
//   baza.execQuery(`INSERT INTO grad(ime, opis, slika, latitude, longitude) VALUES (${mysql.escape(element.city_name)}, ${mysql.escape(element.description)}, ${mysql.escape(element.img)}, ${mysql.escape(element.lat)}, ${mysql.escape(element.lng)})`, function(results) {
//     console.log(results)
//   })
  // baza.execQuery("INSERT INTO grad(ime, opis, slika, latitude, longitude) VALUES ("+mysql.escape(element.city_name)+", "+mysql.escape(element.description)+", "+mysql.escape(element.img)+", "+mysql.escape(element.lat)+", "+mysql.escape(element.lng)+")", function(results) {
  //   console.log(results)
  // })
//   baza.execQueryParams(`INSERT INTO grad(ime, opis, slika, latitude, longitude) VALUES (?,?,?,?,?)` , [element.city_name, element.description, element.img, element.lat, element.lng], function(results) {
//     console.log(results)
//   })
// })
