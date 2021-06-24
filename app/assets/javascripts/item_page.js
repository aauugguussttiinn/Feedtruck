var itemTabs = document.querySelectorAll('.item-tabs li');
var itemTabContentBoxes = document.querySelectorAll('#item-tab-content > div');

itemTabs.forEach((tab)=>{
    tab.addEventListener('click', ()=>{
        itemTabs.forEach(item => item.classList.remove('is-active'))
        tab.classList.add('is-active');

        var target = tab.dataset.target;
        itemTabContentBoxes.forEach(box => {
            if(box.getAttribute('id') === target){
                box.classList.remove('is-hidden');      
            }
            else{
                box.classList.add('is-hidden');
            }
        })
    })
});