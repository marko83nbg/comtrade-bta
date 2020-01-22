
let user = JSON.parse(localStorage.getItem('loggedUser'));
if (user) {
  checkLogin()
}

document.getElementById('loginBtn').addEventListener('click', login);
document.getElementById('search').addEventListener('keyup', filterCities);
// Logout funkcionalnost
document.getElementById('logout-button').addEventListener('click', function () {
  logout()
})

function logout() {
  localStorage.removeItem('loggedUser')
  $('#btnLogin').removeClass('d-none')
  $('#btnLogout').removeClass('d-inline-block')
  $("#search").prop("disabled", true)
  $('#loggedUser').text('')
  $('#loginModal').modal('show')
  $('#cityList').html('')
  document.getElementById('user-img').src = ''
  fetch('/logout')
}

function checkLogin() {
  fetch('/check')
    .then(res => res.json())
    .then(res => {
      if(res.loggedIn) {
        $('#btnLogin').addClass('d-none');
        $('#btnLogout').addClass('d-inline-block');
        $('#loggedUser').text(user.ime);
        $('#loginModal').modal('hide');
        $("#search").prop("disabled", false);
        document.getElementById('user-img').src = user.slika
        getCities();
      } else if(!res.loggedIn) {
        localStorage.removeItem('loggedUser')
      }
    })
}

// function login() {
//   const username = document.getElementById('user').value;
//   const password = document.getElementById('pass').value;

//   fetch(`/login/${username}/${password}`)
//     .then(res => res.json())
//     .then(res => {
//       localStorage.setItem('loggedUser', JSON.stringify(res));
//       $('#btnLogin').addClass('d-none');
//       $('#btnLogout').addClass('d-inline-block');
//       $('#loggedUser').text(res[0].ime);
//       $("#search").prop("disabled", false);
//       getCities();
//     });
// }

// pocetak rada na bezbednom loginu preko tokena
function login() {
  const user = document.getElementById('user').value;
  const pass = document.getElementById('pass').value;
  let loginBody = {
    username: user,
    password: pass
  }
  let loginOptions = {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify(loginBody)
  }
  fetch('/login', loginOptions)
    .then(res => res.json())
    .then(res => {
      console.log(res)
      if (res.loggedIn) {
        localStorage.setItem('loggedUser', JSON.stringify(res.user[0]))
        $('#btnLogin').addClass('d-none');
        $('#btnLogout').addClass('d-inline-block');
        $('#loggedUser').text(res.user[0].ime);
        document.getElementById('user-img').src = res.user[0].slika
        $("#search").prop("disabled", false);
        getCities();
      } else if (!res.loggedIn) {
        alert('Wrong username or password')
      }
    })
}

let cityArr;

function getCities() {
  fetch('/cities')
    .then(res => res.json())
    .then(data => {
      console.log(data)
      cityArr = data;
      $('#cityList').html(data.map(cityTemplate).join(''));
    });
}

const cityTemplate = element => `
<li class="list-group-item mb-1" style= " background-color: #e3e7ee">
    <a href="city.html?grad-id=${element.id}" style = "color: #384867" class="mainCityLinks">
        <div class="row align-items-center text-center">
            <div class="col-lg-12">
                <img class="cityMainImg" src="${element.slika}" height="100px" alt="${element.ime}">
            </div>
            <div class="col-lg-12">
                <h1 class="text-center">${element.ime}</h1>
                <p id="descriptionCity" class="text-left">${element.opis}</p>
            </div>
        </div>   
    </a>     
</li>`;

function filterCities(e) {
  $('#cityList').html(cityArr
    .filter(element => element.ime.toLowerCase().indexOf(e.target.value.toLowerCase()) > -1)
    .map(cityTemplate)
    .join(''));
}