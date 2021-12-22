
// Show Hide sidebar

let sidebarBtn = document.querySelector('#sidebarBtn');
sidebarBtn.onclick = function() {

  let sidebar = document.querySelector('aside');
  let sidebarMobile = document.querySelector('#sidebarMobile');

  if(sidebar.classList.contains('sm:block')) {
    sidebar.classList.replace('sm:block', 'sm:hidden');

  } else {
    sidebar.classList.replace('sm:hidden', 'sm:block');
  }

  if(sidebarMobile.classList.contains('hidden')) {
    sidebarMobile.classList.remove('hidden');

  } else {
    sidebarMobile.classList.add('hidden');
  }
}













// -----------
