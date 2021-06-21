window.addEventListener('turbolinks:load', () => {
  var button1 = document.querySelector('.drop_but1');
  button1.addEventListener('click', () =>{
      button1.classList.toggle('is-active')
  });
  var button2 = document.querySelector('.drop_but2');
  button2.addEventListener('click', () =>{
      button2.classList.toggle('is-active')
  });
})



