
document.addEventListener('DOMContentLoaded', () => {

    // Mobile menu
    const burgerIcon = document.querySelector('.navbar-burger');
    const navbarMenu = document.querySelector('#main-navbar');
    burgerIcon.addEventListener('click', () =>{
        navbarMenu.classList.toggle('is-active')

    });

    const customerAvatar = document.querySelector('.profile-button');
    const customerProfile = document.querySelector('.customer-profile');

    customerAvatar.addEventListener('click', () =>{
        customerProfile.classList.toggle('is-active')

    });

});
