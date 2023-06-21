//for active nav links indicator
  var path = window.location.pathname;

  var page = path.split("/").pop();

  page = page.replace(".html", "");

  var navLinks = document.querySelectorAll("nav ul li a");
  for (var i = 0; i < navLinks.length; i++) {
    var link = navLinks[i];
    var linkPath = link.getAttribute("href");
    var linkPage = linkPath.split("/").pop().replace(".html", "");
    
    if (linkPage === page) {
      link.classList.add("active");
    }
  }
