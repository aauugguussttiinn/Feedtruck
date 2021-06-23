window.addEventListener('turbolinks:load', () => {

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
})