function quickSearch() {
    var input, filter, ul, li, a, i;
    input  = document.getElementById("q");
    filter = input.value.toUpperCase();
    ul     = document.getElementById("tab1");
    li     = ul.getElementsByClassName("product");
    
    for (i = 0; i < li.length; i++) {
        a = li[i].getElementsByClassName("product-name")[0];
        if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
            li[i].style.display = "";
        } else {
            li[i].style.display = "none";
        }
    }
}