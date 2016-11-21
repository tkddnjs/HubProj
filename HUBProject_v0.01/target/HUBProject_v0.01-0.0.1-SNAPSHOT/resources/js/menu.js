function openList(evt, listName) {
    // Declare all variables
    var i, tabcontent, tablinks;
    
    // Get all elements with class="tabcontent" and hide them
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    
    // Get all elements with class="tablinks" and remove the class "active"
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    
    // Show the current tab, and add an "active" class to the link that opened the tab
    document.getElementById(listName).style.display = "block";
    evt.currentTarget.className += " active";
    
    // Get the element with id="defaultOpen" and click on it
    document.getElementById("defaultOpen").click();
    
}

function openList2(evt, listName2) {
    // Declare all variables
    var i, tablinks;
    
    // Get all elements with class="tabcontent" and hide them
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
    	tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    
    document.getElementById(listName2).style.display = "block";
    evt.currentTarget.className += " active";
    
    document.getElementById("defaultOpen").click();
    
 }