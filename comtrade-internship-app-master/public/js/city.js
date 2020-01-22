let feedbackArray = [];
let id = getParameter("grad-id");
let map;
let idAtrakcija;
let tempFeedId = id



function getParameter(paramName) {
  let searchString = window.location.search.substring(1),
    i,
    val,
    params = searchString.split("&");

  for (i = 0; i < params.length; i++) {
    val = params[i].split("=");
    if (val[0] == paramName) {
      return val[1];
    }
  }
  return null;
}

//prikaz fotografije grada i pozadina body-a
fetch(`/city/${id}`)
  .then(res => res.json())
  .then(res => {
    document.getElementById("city-img").innerHTML = `<img src="${
      res[0].slika
      }" class="ing-fluid" alt="${res[0].ime}">`;

    document.getElementById("body").style.backgroundImage = `url(${
      res[0].slika
      })`;
  });

// prikaz imena grada i opisa, sve se odnosi na jedan grad
fetch(`/city/${id}`)
  .then(res => res.json())
  .then(res => {
    document.getElementById(
      "city-description"
    ).innerHTML = `<h1 class="cityHeadline" >${
      res[0].ime
      }</h1><p class="cityText pr-3"  id="content">${res[0].opis}</p>`;
    minimizedElements();
  });

// f-ja za show more-show less hoteli i atrakcije
let count = 0;

function moreLess(id, classname) {
  document.getElementById(id).addEventListener("click", function () {
    count++;
    if (count % 2 !== 0) {
      document.getElementById(id).value = "Show less..";
      Array.from(document.getElementsByClassName(classname)).forEach(
        element => {
          element.setAttribute("style", "display:block");
        }
      );
    } else {
      document.getElementById(id).value = "Show more..";
      Array.from(document.getElementsByClassName(classname)).forEach(
        element => {
          element.setAttribute("style", "display:none");
        }
      );
    }
  });
}

// prikaz hotela u tom gradu

let display = "";
fetch(`/hotels/${id}`)
  .then(res => res.json())
  .then(res => {
    res.forEach((element, i) => {
      let moreClass = i > 2 && "moreClass";
      let rating = Math.round(element["AVG(feedback_hotel.rating)"]);
      let stringZvezdice = "";
      while (rating > 0) {
        stringZvezdice += `<i class="text-warning fa fa-star"></i>`;
        rating--;
      }
      if (!stringZvezdice) stringZvezdice = "Nema ocena";
      display += `<li class="list-group-item list-group-item-primary mb-1 ${moreClass} listBack">
        <a href="accommodation.html?hotel-id=${element.id}&grad-id=${id}">
          <div class="row align-items-center text-center">
            <div class="col-lg-3 col-md-4 col-sm-5 mb-3">
              <img class="d-block mx-auto" src="${
        element.url_slike
        }" height="100px" alt="${element.ime}">
            </div>

            <div class="col-lg-8 col-md-7 ml-3 col-sm-6 listContent">
              <div class="clearfix pl-4">
                <h2 id="nameAccomod" class="float-left">${element.ime}</h2>
                <div id="starsAccomod" class="float-right align-items-center">${stringZvezdice}</div>
              </div>
              <p id="descriptionAccomod" class="text-left pl-4">${
        element.opis
        }</p>
            </div> 
          </div>
        </a>
      </li>`;
      document.getElementById("topAccomodations").innerHTML = display;
    });
    moreLess("moreBtn", "moreClass");
  });

//prikaz atrakcija u gradu
let displayAttr = "";
fetch(`/attractions/${id}`)
  .then(res => res.json())
  .then(res => {
    res.forEach((element, i) => {
      let moreClass1 = i > 2 && "moreClass1";
      displayAttr += `<li class="list-group-item list-group-item-primary mb-1 ${moreClass1} listBack znamenje-hover">
        <a href="#" class="mb-1 d-block" data-id="${i}" data-toggle='modal' data-target='#modalZaMape'>
          <div class="row align-items-center text-center">
            <div class="col-lg-2 col-md-3 col-sm-4 mb-3">
              <img class="d-block mx-auto" src="${
        element.slika
        }" height="100px" alt="${element.naziv}">
            </div>
            <div class="col-lg-9 col-md-8 ml-3 col-sm-7 listContent">
              <div class="clearfix pl-4">
                <h1 id="nameAccomod" class="float-left">${element.naziv}</h1>
              </div>
              <p id="descriptionAccomod" class="text-left pl-4">${
        element.opis
        }</p>
            </div> 
          </div>
        </a>
      </li>`;
      document.getElementById("cityAttractions").innerHTML = displayAttr;
    });

    $('#cityAttractions').on('click', 'a', function () {
      let id = $(this)[0].dataset.id;
      document.getElementById('modalMapeHeader').innerHTML = `
        <div class="card-body">     
            <h4>${res[id].naziv}</h4>
        </div>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
    `;

      prikaziMapu(res[id].longitude, res[id].latitude)
    });

    moreLess("moreBtn1", "moreClass1");
  });

$(document).ready(function () {
  $(".tab-item").click(function () {
    $(".collapse").collapse("hide");
  });

  $(".carousel").carousel({
    interval: 3000
  });

  $("body").on("load", $(".commentGroup").hide());

  $("#btnFooterToggle").click(function () {
    $(".commentGroup").toggle();
  });

  $("#addComment").click(function () {
    $(".commentGroup").toggle();
  });
});

//setting the date
let currentDate = new Date();
document.getElementById("date").textContent = stringDate(currentDate);

function stringDate(currDate) {
  let mm = currDate.getMonth() + 1;
  mm = mm < 10 ? `0${mm}` : mm;
  let dd = currDate.getDate();
  dd = dd < 10 ? `0${dd}` : dd;
  return `${dd}/${mm}/${currDate.getFullYear()}`;
}

//less and more text
function minimizedElements() {
  let minimized_elements = $("#content");

  minimized_elements.each(function () {
    let t = $(this).text();
    if (t.length < 200) return;

    $(this).html(
      t.slice(0, 200) +
      '<span>... </span><a href="#" class="more">More</a>' +
      '<span style="display:none;">' +
      t.slice(300, t.length) +
      ' <a href="#" class="less">Less</a></span>'
    );
  });

  $("a.more", minimized_elements).click(function (event) {
    event.preventDefault();
    $(this)
      .hide()
      .prev()
      .hide();
    $(this)
      .next()
      .show();
  });

  $("a.less", minimized_elements).click(function (event) {
    event.preventDefault();
    $(this)
      .parent()
      .hide()
      .prev()
      .show()
      .prev()
      .show();
  });
}

// weather

// Event listeners
document.addEventListener("DOMContentLoaded", getData);

//const apiKey = '4557aae956939ce49a2fe6d480b1d84d';

const desc = document.getElementById("description");
const string = document.getElementById("stringWeather");
const humidity = document.getElementById("humidity");
const pressure = document.getElementById("pressure");
const wind = document.getElementById("wind");

const weatherTemplate = (element, index) => {
  return `<div class="carousel-item ${
    index === 0 ? "active" : null
    } bg-info1 w-100">
  <div class="row px-2 justify-content-center align-items-center mb-1 pt-5 text-white">
    <div class="col-3"><img src="https://www.metaweather.com/static/img/weather/${
    element.weather_state_abbr
    }.svg" width="40"></div>
    <div class="col-3 text-center">${element.weather_state_name}</div>
    <div class="col-3">${element.min_temp.toFixed(
      0
    )}&#176;/${element.max_temp.toFixed(0)}&#176;</div> 
  </div>
  <div class="row justify-content-center align-middle mt-3"><p>${
    element.applicable_date
    }<p></div>
</div>`;
};

function getData() {
  fetch(`/city/${id}`)
    .then(res => res.json())
    .then(res => {
      fetch(
        `https://proxy-requests.herokuapp.com/https://www.metaweather.com/api/location/${
        res[0].woeid
        }/`
      )
        .then(res => res.json())
        .then(data => {
          print(data);
          let fiveDays = [...data.consolidated_weather];
          fiveDays.shift();
          $("#carouselExampleControls .carousel-inner").html(
            fiveDays.map(weatherTemplate, 0).join("")
          );
        });
    });
}

function print(data) {
  desc.innerHTML = data.consolidated_weather[0].weather_state_name;
  string.innerHTML = `${data.consolidated_weather[0].the_temp.toFixed(
    1
  )}&nbsp;`;
  humidity.textContent = `${data.consolidated_weather[0].humidity} %`;
  pressure.textContent = `${data.consolidated_weather[0].air_pressure.toFixed(
    0
  )}`;
  wind.textContent = `${data.consolidated_weather[0].wind_speed.toFixed(
    0
  )} m/s`;
}

/////////////////////////////////////////////////////////////

// funkcija nabavlja spisak komentara iz baze i prikazuje ih u modalu
function feedbackGrad(id) {
  fetch(`/feedback-grad/${id}`)
    .then(res => res.json())
    .then(res => {
      feedbackArray = res;
      let displayComments = "";
      res.forEach(comment => {
        let rating = comment.rating;
        let stringZvezdice = "";
        while (rating > 0) {
          stringZvezdice += `<i class="text-warning fa fa-star"></i>`;
          rating--;
        }
        if (!stringZvezdice) stringZvezdice = "Nema ocena";
        displayComments += `
      <div class="card col-lg-4 col-md-6 col-sm-12 mb-4 px-4 py-3">
      <div class="row card-body card-body1">
        <div class="col-4">
          <img src="${
          comment.slika
          }" class="rounded-circle" height="75px" alt="">
        </div>
        <div class="col-8 feedbackUserName">
          <h4>${comment.ime} ${comment.prezime}</h4>
          <div>${stringZvezdice}</div>
          <small>${comment.datum.substring(0, 10)} ${comment.datum.substring(11, 19)}</small>
        </div>
      </div>
      <div class="row">
        <p class="userCityFeedback">${comment.opis}</p>
      </div>
      <div class="row justify-content-center">
        <div class="w-50">
          <button class="btn btn-warning btn-block  prikazi-modal" type="button" data-toggle="modal" data-feedback-id=${
          comment.id
          } data-target="#modalFeedback">More</button>
        </div>
      </div>
    </div>
      `;
      });
      document.getElementById(
        "commentListFeedbacka"
      ).innerHTML = displayComments;
      $(".prikazi-modal").on("click", function () {
        prikaziFeedbackModal($(this).attr("data-feedback-id"));
      });
    });
}

feedbackGrad(id);

// funkcija ispisuje feedback u modalu
function prikaziFeedbackModal(id) {
  let filtriranFeedback = feedbackArray.filter(
    element => element.id === Number(id)
  );
  console.log(id);
  let rating = filtriranFeedback[0].rating;
  let stringZvezdice = "";
  while (rating > 0) {
    stringZvezdice += `<i class="text-warning fa fa-star"></i>`;
    rating--;
  }
  if (!stringZvezdice) stringZvezdice = "Nema ocena";
  document.getElementById("modalFeedback").innerHTML = `
  <div class="modal-dialog modal-lg ">
    <div class="modal-content modalFeedbackContent">
      <div class="modal-header">
          <div class="row card-body">
            <div class="col-4">
              <img src="${
    filtriranFeedback[0].slika
    }" class="rounded-circle" height="100px" alt="user">
            </div>
            <div class="col-8">
              <h5>${filtriranFeedback[0].ime} ${filtriranFeedback[0].prezime}</h5>
              <div class="">
                ${stringZvezdice}
              </div>
              <small>${filtriranFeedback[0].datum.substring(0, 10)} ${filtriranFeedback[0].datum.substring(11, 19)}</small><br>
              <div class="delete-feedback ${!user.admin && 'd-none'}" data-feedback-id="${filtriranFeedback[0].id}" id="delete-feedback">
                <i class="far fa-trash-alt"></i>
              </div>
            </div>
          </div>
        <button type="button" class="close " data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div>
          <h5 class="ml-2">${filtriranFeedback[0].naziv}</h5>
          <p class="filtriranFeedbackOpis">${filtriranFeedback[0].opis}</p>
        </div>
        <div class="clearfix mb-4">
          <button id="btnFooterToggle" type="button" class="btn btn-primary float-right">Show-hide comments</button>
        </div>
        
        <div class="commentGroup">
          <form class="w-100 p-0" id="comment-on-feedback" >
            <div class="form-group justify-content-center">
            <label for="comment">Message</label>
            <textarea class="form-control" rows="3" id="comment-text"></textarea>
          </div>

            <div class="clearfix">
              <button type="submit" class="btn btn-primary float-right btnSubmit">Send comment</button>
            </div>
          </form>
          <ul class="list-group mb-1" id="commentListKomentara">
        
          </ul>
          
        </div>
      </div>
      
    </div>
  </div>
    `;
  $('#delete-feedback').on('click', function() {
    deleteFeedback($(this).attr('data-feedback-id'))
  })
  komentarFeedbackGrada(id);

  $("#btnFooterToggle").on("click", function () {
    $("#comment-on-feedback").slideToggle();
  });

  $("#comment-on-feedback").on("submit", function (e) {
    e.preventDefault();
    const commentBody = {
      feedbackId: Number(id),
      text: $("#comment-text").val(),
      korisniciId: user.id
    };
    const commentOptions = {
      method: "POST",
      headers: {
        "Content-Type": "application/json"
      },
      body: JSON.stringify(commentBody)
    };
    $("#comment-text").val("");
    fetch("/post-comment-city", commentOptions)
      .then(res => res.json())
      .then(res => {
        if (res.poslato) komentarFeedbackGrada(id);
      });
  });
  komentarFeedbackGrada(id);
}

// funkcija brise feedback i komentare vezane za njega po id-u feedbacka
function deleteFeedback(feedbackId) {
  if(window.confirm('Are you sure you want to delete this feedback? It will also remove all the related comments!')){
    fetch('/delete-feedback-grad', {
      method: 'DELETE',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({feedbackId: feedbackId})
    })
      .then(res => res.json())
      .then(res => {
        $('#modalFeedback').modal('toggle')
        feedbackGrad(tempFeedId)
      })
  }
}

function komentarFeedbackGrada(id) {
  fetch(`/komentar-grad/${id}`)
    .then(res => res.json())
    .then(res => {
      console.log(res);
      let displayComments = "";
      res.forEach(comment => {
        displayComments += `
      <li class="list-group-item  clearfix d-flex">
          <div class="mr-3 align-self-center">
            <img class="rounded-circle " src="${comment.slika}" alt="${
          comment.ime
          }" width="90px"/>
          </div>
          <div class="d-block w-100">
            <div>
              <div class="d-inline-block w-25 text-center mb-2 float-left nameUserComment">
                ${comment.ime} ${comment.prezime}
              </div>
              <div class="float-right">
                <small>${comment.datum.substring(
            0,
            10
          )} ${comment.datum.substring(11, 19)}</small>
              </div>
            </div>
            <div class="d-inline-block w-100 text-dark">
              ${comment.text}
            </div>
            <div class="delete-comment ${!user.admin && 'd-none'}" data-comment-id="${comment.id}">
              <i class="far fa-trash-alt"></i>
            </div>
          </div>
        </li>`;
      });
      document.getElementById(
        "commentListKomentara"
      ).innerHTML = displayComments;
      $('.delete-comment').on('click', function(event){
        obrisiKomentar($(this).attr('data-comment-id'), event, id)
      })
    });
}

// funkcija brise komentar po commentId, i refreshuje prikaz komentara u modalu
function obrisiKomentar(commentId, event, feedbackId) {
  if(window.confirm('Are you sure you want to delete this comment?')){
    fetch('/delete-comment-city', {
      method: 'DELETE',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({commentId: commentId})
    })
      .then(res => res.json())
      .then(res => {
        komentarFeedbackGrada(feedbackId)
      })
  }
}

$("#form-city-feedback input[type=radio]").on("change", function () {
  rating = $("input[name=rate]:checked").val();
});

$('#button-add-feedback').on('click', function(){
  $('#modal-add-feedback-username').html(user.ime + ' ' + user.prezime)
})

$("#form-city-feedback").on("submit", function (e) {
  e.preventDefault();
  // Slanje feedbacka za grad:
  const feedbackBody = {
    gradId: id,
    korisniciId: user.id,
    rating: rating,
    naziv: $("#naziv-feedback-city").val(),
    opis: $("#comment-feedback-city").val()
  };
  const feedbackOptions = {
    method: "POST",
    headers: {
      "Content-Type": "application/json"
    },
    body: JSON.stringify(feedbackBody)
  };
  fetch("/post-feedback-city", feedbackOptions)
    .then(res => res.json())
    .then(res => {
      if (res.poslato) $("#addFeedCity").modal("hide");
      feedbackGrad(id);
    });

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
  setTimeout(function(){
    document.getElementById('glavni-container').innerHTML = '<h2 id="login-obavestenje">You are not logged in, please log in.</h2>'
  }, 200)
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
    document.getElementById('glavni-container').innerHTML = '<h2 id="login-obavestenje">You are not logged in, please log in.</h2>'
  }, 200)
})

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
          document.getElementById('glavni-container').innerHTML = '<h2 id="login-obavestenje">You are not logged in, please log in</h2>'
        }, 200)
      }
    })
}

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


