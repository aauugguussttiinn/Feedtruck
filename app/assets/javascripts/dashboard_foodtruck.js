var dashboardTabs = document.querySelectorAll('.dashboard-tabs li');
var dashboardTabContentBoxes = document.querySelectorAll('#dashboard-tab-content > div');

dashboardTabs.forEach((tab)=>{
  tab.addEventListener('click', ()=>{
    dashboardTabs.forEach(item => item.classList.remove('is-active'))
    tab.classList.add('is-active');

    var toSelect = tab.dataset.to_select;
    dashboardTabContentBoxes.forEach(box => {
      if(box.getAttribute('id') === toSelect){
        box.classList.remove('is-hidden');      
      }
      else{
        box.classList.add('is-hidden');
      }
    })
  });
});

//show order dashboard foodtruck

var showOrderBtn = Array.from(document.querySelectorAll('#show-order-button'));
var modalBg = document.querySelectorAll('.modal-background');
var modal = Array.from(document.querySelectorAll('#foodtruck-show-order'));

showOrderBtn.forEach((btn)=>{
  btn.addEventListener('click', ()=>{
    modal.forEach((mdl)=>{
      if(showOrderBtn.indexOf(btn) === modal.indexOf(mdl)){
        mdl.classList.add('is-active');  
      };
     
      modalBg.forEach((bg)=>{
        bg.addEventListener('click', ()=>{
          mdl.classList.remove('is-active')
        });
      });
    });
  });
});