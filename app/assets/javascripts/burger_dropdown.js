// Mobile menu
// listen to clicks on burger icon on turbolinks load
var burgerIcon = document.querySelector('.navbar-burger');
var navbarMenu = document.querySelector('#main-navbar');
burgerIcon.addEventListener('click', () =>{
    navbarMenu.classList.toggle('is-active')
});