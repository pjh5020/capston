function openMenu() {
    document.getElementById("main").style.marginRight = "250px";
    document.querySelector('.sidebar').style.width = "200px";
    //document.querySelector('.openbtn').style.display = 'none';
}

function closeMenu() { 
    document.getElementById("main").style.marginRight= "0";
    document.querySelector('.sidebar').style.width = "0";
  // document.querySelector('.openbtn').style.display = 'block';
}