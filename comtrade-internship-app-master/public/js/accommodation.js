let idGrada = getParameter('grad-id');
let idHotel = getParameter('hotel-id');
let display = '';
let feedbackArray = []
let rating = ''
let mapiraniHoteli = []
let showMore = false
let map;

// funkcija za izvlacenje parametara iz adrese browsera
function getParameter(paramName) {
  let searchString = window.location.search.substring(1),
    i,
    val,
    params = searchString.split('&');

  for (i = 0; i < params.length; i++) {
    val = params[i].split('=');
    if (val[0] == paramName) {
      return val[1];
    }
  }
  return null;
}

// pocetno prikazivanje feedbacka na stranici
function nabaviFeedback() {
  fetch(`/feedback-hotel/${idHotel}`)
    .then(res => res.json())
    .then(res => {
      feedbackArray = res;
      let feedbackDisplay = '';
      if (feedbackArray.length > 0) {
        feedbackArray.forEach((feedback, index) => {
          let rating = Math.round(feedback.rating)
          let stringZvezdice = ''
          while (rating > 0) {
            stringZvezdice += `<i class="fa text-warning fa-star"></i>`
            rating--
          }
          if (!stringZvezdice)
            stringZvezdice = 'Nema ocena'
          feedbackDisplay += `
            <div class="carousel-item ${index === 0 ? "active" : null}  header-feedback">
              <div class="card col-lg-12 bg-light mb-4 px-4 py-3 mx-auto">
                <div class="row card-body">
                  <div class="col-md-4">
                    <img src="${feedback.slika}" class="rounded-circle" height="75px" alt=""/>
                  </div>
                  <div class="col-8">
                    <h4>${feedback.ime} ${feedback.prezime}</h4>
                    <div>
                      ${stringZvezdice}
                    </div>
                    <small>${feedback.datum.substring(0, 10)} ${feedback.datum.substring(11, 19)}</small>
                  </div>
                </div>
              </div>
              <div>
                <p class="mb-0 ml-2">
                  ${feedback.opis}
                </p>
              </div>
              <div class="row justify-content-center">
                <div class="w-50">
                  <button class="main-button prikazi-modal btn btn-block mt-1 mb-2" data-feedback-id=${feedback.id} type="button" data-toggle="modal" data-target="#modalFeedback">
                    More
                  </button>
                </div>
              </div>
            </div>
            `
        })
      } else {
        feedbackDisplay += `<div class="alert alert-info"><strong >Be the first to leave feedback</strong></div>`;
        $('.feedback-display-control').addClass('d-none');
      }
      
      document.getElementById('feedback-display').innerHTML = feedbackDisplay
      $('.prikazi-modal').on('click', function () {
        prikaziFeedbackModal($(this).attr('data-feedback-id'))
      })
    })
}

// funkcija ispisuje feedback u modalu
function prikaziFeedbackModal(id) {
  let filtriranFeedback = feedbackArray.filter(element => element.id === Number(id))
  let rating = Math.round(filtriranFeedback[0].rating)
  let stringZvezdice = ''
  while (rating > 0) {
    stringZvezdice += `<i class="text-warning fa text-warning fa-star"></i>`
    rating--
  }
  if (!stringZvezdice)
    stringZvezdice = 'Nema ocena'
  document.getElementById('modalFeedback').innerHTML = `
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <div class="row card-body">
            <div class="col-4">
              <img src="${filtriranFeedback[0].slika}" class="rounded-circle" height="100px" alt="user"/>
            </div>
            <div class="col-8">
              <h5>${filtriranFeedback[0].ime} ${filtriranFeedback[0].prezime}</h5>
              <div>${stringZvezdice}</div>
              <small>${filtriranFeedback[0].datum.substring(0, 10)} ${filtriranFeedback[0].datum.substring(11, 19)}</small><br>
              <div class="delete-feedback ${!user.admin && 'd-none'}" data-feedback-id="${filtriranFeedback[0].id}" id="delete-feedback">
                <i class="far fa-trash-alt"></i>
              </div>
            </div>
          </div>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="row">
            <h5 class="ml-2">${filtriranFeedback[0].naziv}</h5>
            <p class="ml-2">${filtriranFeedback[0].opis}</p>
          </div>
          <div class="clearfix mb-3">
            <button id="btnFooterToggle" type="button" class="btn main-button float-right">
              Toggle comment
            </button>
          </div>
          <div class="commentGroup">
            <form class="w-100 p-0 mb-3" id="forma-comment">
              <div class="form-group justify-content-center">
                <label for="comment-on-feedback">Message</label>
                <textarea class="form-control" id="comment-on-feedback" rows="3" required minlength="20" maxlength="300" placeholder="Your comment here..."></textarea>
              </div>
              <div class="clearfix">
                <button type="submit" class="btn main-button float-right">
                  Send comment
                </button>
              </div>
            </form>
            <ul class="list-group mb-1" id="commentList">
            </ul>
          </div>
        </div>
      </div>
    </div>
    `
  $('#btnFooterToggle').on('click', function () {
    $('#forma-comment').slideToggle()
  })

  // event za brisanje feedbacka hotela
  $('#delete-feedback').on('click', function() {
    deleteFeedback($(this).attr('data-feedback-id'))
  })

  // forma za ostavljanje komentara na feedback
  $('#forma-comment').on('submit', function (e) {
    e.preventDefault()
    const commentBody = {
      feedbackId: Number(id),
      text: $('#comment-on-feedback').val(),
      // korisniciId: Math.floor(Math.random() * (5 - 1)) + 1
      korisniciId: user.id
    }
    const commentOptions = {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(commentBody)
    }
    $('#comment-on-feedback').val('')
    fetch('/post-comment-hotel', commentOptions)
      .then(res => res.json())
      .then(res => {
        if (res.poslato)
          nabaviSpisakKomentara(id)
      })
  })
  nabaviSpisakKomentara(id)
}

// funkcija brise feedback i komentare vezane za njega po id-u feedbacka
function deleteFeedback(feedbackId) {
  if(window.confirm('Are you sure you want to delete this feedback? It will also remove all the related comments!')){
    fetch('/delete-feedback-hotel', {
      method: 'DELETE',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({feedbackId: feedbackId})
    })
      .then(res => res.json())
      .then(res => {
        $('#modalFeedback').modal('toggle')
        nabaviFeedback()
      })
  }
}

// funkcija nabavlja spisak komentara iz baze i prikazuje ih u modalu
function nabaviSpisakKomentara(id) {
  fetch(`/komentar-hotel/${id}`)
    .then(res => res.json())
    .then(res => {
      let displayComments = ''
      res.forEach(comment => {
        displayComments += `
          <li class="list-group-item clearfix d-flex">
            <div class="mr-3 align-self-center">
              <img class="rounded-circle " src="${comment.slika}" alt="${comment.ime}" width="90px"/>
            </div>
            <div class="d-block w-100">
              <div>
                <div class="d-inline-block w-25 imeFedback text-center mb-2 float-left">
                  ${comment.ime} ${comment.prezime}
                </div>
                <div class="float-right">
                  <small>${comment.datum.substring(0, 10)} ${comment.datum.substring(11, 19)}</small>
                </div>
              </div>
              <div class="d-inline-block w-100 text-dark">
                ${comment.text}
              </div>
              <div class="delete-comment ${!user.admin && 'd-none'}" data-comment-id="${comment.id}">
                <i class="far fa-trash-alt"></i>
              </div>
            </div>
          </li>
        `
      })
      document.getElementById('commentList').innerHTML = displayComments
      $('.delete-comment').on('click', function(event){
        obrisiKomentar($(this).attr('data-comment-id'), event, id)
      })
    })
}

// funkcija brise komentar po commentId, i refreshuje prikaz komentara u modalu
function obrisiKomentar(commentId, event, feedbackId) {
  if(window.confirm('Are you sure you want to delete this comment?')){
    fetch('/delete-comment-hotel', {
      method: 'DELETE',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({commentId: commentId})
    })
      .then(res => res.json())
      .then(res => {
        nabaviSpisakKomentara(feedbackId)
      })
  }
}

function izlistajHotele(mapiraniHoteli, limit) {
  mapiraniHoteli = [...mapiraniHoteli]
  mapiraniHoteli.length = limit
  display = ''
  mapiraniHoteli.forEach(element => {
    let rating = Math.round(element['AVG(feedback_hotel.rating)'])
    let stringZvezdice = ''
    while (rating > 0) {
      stringZvezdice += `<i class="text-warning fa fa-star"></i>`
      rating--
    }
    if (!stringZvezdice)
      stringZvezdice = 'Nema ocena'
    display +=
      `<li class="list-group-item accommodation-list-item mb-1">
      <a href="accommodation.html?hotel-id=${element.id}&grad-id=${idGrada}">
        <div class="row align-items-center text-center">
          <div class="col-lg-3 col-md-4 col-sm-5 mb-3">
            <img class="d-block mx-auto" src="${element.url_slike}" height="100px" alt="${element.ime}">
          </div>
          <div class="col-lg-8 col-md-7 ml-3 col-sm-6">
            <div class="clearfix pl-4">
              <h2 id="nameAccomod" class="float-left">${element.ime}</h2>
              <div id="starsAccomod" class="float-right align-items-center">${stringZvezdice}</div>
            </div>
            <p id="descriptionAccomod" class="text-left pl-4">${element.opis}</p>
          </div> 
        </div>
      </a>
    </li>`;
    document.getElementById("topAccomodations").innerHTML = display;
  });
}

// prikaz imena hotela i opisa pri load-u stranice
function prikaziHotel() {
  fetch(`/hotel/${idHotel}`)
    .then(res => res.json())
    .then(res => {
      document.getElementById("body").style.backgroundImage = `url(${
        res[0].url_slike
        })`
      let rating = Math.round(res[0]['AVG(feedback_hotel.rating)'])
      let stringZvezdice = ''
      while (rating > 0) {
        stringZvezdice += `<i class="fa text-warning fa-star"></i>`
        rating--
      }
      if (!stringZvezdice)
        stringZvezdice = 'Nema ocena'
      document.getElementById('hotel-description').innerHTML =
        `<h1 class='h-25'>${res[0].ime}</h1>
    <div class="current-hotel-rating">${stringZvezdice}</div>
    <p class='h-75 pr-3 my-3'>${res[0].opis}</p>
    <a href="#" class="mb-3 d-block" data-toggle='modal' data-target='#modalZaMape'><i>Address: ${res[0].address}</i></a>
    <a href="${res[0].url_booking}" target="_blank">This hotel on booking.com</a><br>
    <button class='btn d-inline-block my-3 dodaj-feed' type='button' data-toggle='modal' data-target='#addFeed'>Dodaj feed...</button>`;

      document.getElementById('hotel-image-1').src = `${res[0].url_slike}`;
      document.getElementById('hotel-image-1').alt = `${res[0].ime}`;
      document.getElementById('hotel-image-2').alt = `${res[0].ime}`;
      document.getElementById('hotel-image-3').alt = `${res[0].ime}`;
      document.getElementById('hotel-image-4').alt = `${res[0].ime}`;
      document.getElementById('hotel-image-5').alt = `${res[0].ime}`;
      document.getElementById('hotel-image-6').alt = `${res[0].ime}`;


      document.getElementById('modalMapeHeader').innerHTML = `
        <div class="card-body">     
            <h4>${res[0].ime}</h4>
            <p>${res[0].address}</p>
        </div>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
    `

      prikaziMapu(res[0].longitude, res[0].latitude)

      fetch(`/hotel-images/${idHotel}`)
        .then(res => res.json())
        .then(
          res => {
            document.getElementById('hotel-image-2').src = `${res[0].url_slike}`;
            document.getElementById('hotel-image-3').src = `${res[1].url_slike}`;
            document.getElementById('hotel-image-4').src = `${res[2].url_slike}`;
            document.getElementById('hotel-image-5').src = `${res[3].url_slike}`;
            document.getElementById('hotel-image-6').src = `${res[4].url_slike}`;
          })
    }
    );
}

// sakrivanje tabova
$('.tab-item').click(function () {
  $('.collapse').collapse('hide');
});

// interval smena slika u slideru
$('.carousel').carousel({
  interval: 10000
});

prikaziHotel()

// show more/show less hotels dugme
// dugme proverava globalnu promenljivu showMore, i zavisno od stanja prikazuje vise ili manje hotela
$('#show-more-hotels').on('click', function () {
  if (!showMore) {
    izlistajHotele(mapiraniHoteli, 10)
    showMore = true
    $(this).html('Show less...')
  }
  else {
    izlistajHotele(mapiraniHoteli, 3)
    showMore = false
    $(this).html('Show more...')
  }
})

nabaviFeedback()

// prikazi ime grada
fetch(`/city/${idGrada}`)
  .then(res => res.json())
  .then(res => document.getElementById('city-name').innerHTML = `<a href="city.html?grad-id=${idGrada}">${res[0].ime}</a>`)
  .then(res => document.getElementById('city-name-header').innerHTML = `<a class="nav-link" href="city.html?grad-id=${idGrada}">City</a>`)


// prikaz hotela u tom gradu
fetch(`/hotels/${idGrada}`)
  .then(res => res.json())
  .then(res => {
    mapiraniHoteli = [...res];
    // mapiraniHoteli.length = 3;
    izlistajHotele(mapiraniHoteli, 3)
  });

// Forma za ostavljanje feedbacka za hotel
$('#form-hotel-feedback input[type=radio]').on('change', function () {
  rating = ($('input[name=rate]:checked').val())
})

$('#form-hotel-feedback').on('submit', function (e) {
  e.preventDefault()
  // Slanje feedbacka za hotel:
  const feedbackBody = {
    hotelId: idHotel,
    // korisniciId: Math.floor(Math.random() * (5 - 1)) + 1,
    korisniciId: user.id,
    rating: rating,
    naziv: $('#naziv-feedback-hotel').val(),
    opis: $('#comment-feedback').val()
  }
  const feedbackOptions = {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(feedbackBody)
  }
  fetch('/post-feedback-hotel', feedbackOptions)
    .then(res => res.json())
    .then(res => {
      if (res.poslato)
        $('#addFeed').modal('hide')
      nabaviFeedback()
      prikaziHotel()
    })
})

function prikaziMapu(lng, lat) {
  mapboxgl.accessToken = 'pk.eyJ1IjoibGF6YXJ2dHN0IiwiYSI6ImNqeGE0em1rbDB1djkzbnAzaXZqZGdxanYifQ.2E8B6mI5FO53BV1hGxJiTg';
  map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v11',
    center: [lng, lat],
    zoom: 15
  });

  map.addControl(new mapboxgl.NavigationControl());

  var marker = new mapboxgl.Marker({ color: '#ada074' });

  marker.setLngLat([
    lng,
    lat
  ]);

  marker.addTo(map);

  var layerList = document.getElementById('map-menu');
  var inputs = layerList.getElementsByTagName('input');

  function switchLayer(layer) {
    var layerId = layer.target.id;
    map.setStyle('mapbox://styles/mapbox/' + layerId);
  }

  for (var i = 0; i < inputs.length; i++) {
    inputs[i].onclick = switchLayer;
  }
}

function MapModal() {
  $('#modalZaMape').modal();
}

function MapResize() {
  map.resize(); // We will use the map.resize() function, to resize the MapBox map  once the modal has finished loading.
}

// Given that your modal has the id #modal
// and your map is under the variable map. The ‘shown.bs.modal’ event handler is an in-built event handler for Bootstrap Modals.
$('#modalZaMape').on('shown.bs.modal', function () {
  map.resize();
});

// provera da li korisnik postoji u local storage, ako postoji, poziva se checkLogin funkcija koja proverava da li je logovan u bazi
let user = JSON.parse(localStorage.getItem('loggedUser'));
if (user) {
  checkLogin()
  // $('#loggedUser').text('Hi, ' + user.ime)
  // document.getElementById('user-img').src = user.slika
} else {
  $('#btnLogin').removeClass('d-none')
  $('#btnLogout').addClass('d-none')
  document.getElementById('user-img').src = ''
  setTimeout(function () {
    document.getElementById('glavni-container').innerHTML = '<h2 id="login-obavestenje">You are not logged in, please log in.</h2>'
  }, 200)
}

// upisivanje imena korisnika u modal za dodavanje feedbacka
$('#modal-add-feedback-username').html(user.ime + ' ' + user.prezime)

// provera u bazi da li je user logovan
function checkLogin() {
  fetch('/check')
    .then(res => res.json())
    .then(res => {
      if (res.loggedIn) {
        $('#loggedUser').text('Hi, ' + user.ime)
        document.getElementById('user-img').src = user.slika
      } else if (!res.loggedIn) {
        localStorage.removeItem('loggedUser')
        $('#btnLogin').removeClass('d-none')
        $('#btnLogout').addClass('d-none')
        document.getElementById('user-img').src = ''
        setTimeout(function () {
          document.getElementById('glavni-container').innerHTML = '<h2 id="login-obavestenje">You are not logged in, please log in.</h2>'
        }, 200)
      }
    })
}

// Logout funkcionalnost
document.getElementById('logout-button').addEventListener('click', function () {
  localStorage.removeItem('loggedUser')
  $('#btnLogin').removeClass('d-none')
  $('#btnLogout').addClass('d-none')
  document.getElementById('user-img').src = ''
  $('#loggedUser').text('')
  fetch('/logout')
  setTimeout(function () {
    document.getElementById('glavni-container').innerHTML = '<h2 id="login-obavestenje">You are not logged in, please log in</h2>'
  }, 200)
})




