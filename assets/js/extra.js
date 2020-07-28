document.addEventListener("DOMContentLoaded", function() {
  load_navpane();
});

function load_navpane() {
  var width = window.innerWidth;
  if (width <= 1200)
    return;

  var nav = document.getElementsByClassName("md-nav");
  for(var i = 0; i < nav.length; i++) {
    if (typeof nav.item(i).style === "undefined")
      continue;

    if (nav.item(i).getAttribute("data-md-level") === "1" && nav.item(i).getAttribute("data-md-component")) {
      nav.item(i).style.display = 'block';
      nav.item(i).style.overflow = 'visible';
    }
  }

  var nav = document.getElementsByClassName("md-nav__toggle");
  for (var i = 0; i < nav.length; i++) {
    if ((nav.item(i).id.match(/-/g) || []).length > 1)
      continue;
    nav.item(i).checked = true;
  }
}
