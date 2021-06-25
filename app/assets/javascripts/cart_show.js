// display flash when clicking payment as guest
var guestPayment = document.getElementById('guest-payment')
var navbar = document.querySelector(".navbar");
var body = document.body;

// function redirectToSignUp() {
//   return new Promise(resolve => {

//     resolve(value);
//   });
// }

// function createFlash() {
//   var flash = document.createElement("div")
//   flash.classList.add("is-warning","notification","m-0")
//   flash.innerHTML = "Veuillez vous inscrire ou vous connecter pour continuer"
//   body.insertBefore(flash, navbar.nextSibling);
// }
// async function addFlash() {
//   await redirectToSignUp();

//   createFlash();
// }

guestPayment.addEventListener('click', () => {
  window.location.assign('/customers/sign_up');
  // addFlash();
})  




