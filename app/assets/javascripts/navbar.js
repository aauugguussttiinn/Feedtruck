// Mobile menu
// listen to clicks on burger 
var burgerIcon = document.querySelector('.navbar-burger');
var navbarMenu = document.querySelector('#main-navbar');

burgerIcon.addEventListener('click', () =>{
  navbarMenu.classList.toggle('is-active')
});

//dropdowns from signup and signin
var button1 = document.querySelector('.drop_but1');
button1.addEventListener('click', () =>{
  button1.classList.toggle('is-active')
});

var button2 = document.querySelector('.drop_but2');
button2.addEventListener('click', () =>{
  button2.classList.toggle('is-active')
});