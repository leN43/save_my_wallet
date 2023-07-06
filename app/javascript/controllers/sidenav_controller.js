import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="sidenav"
export default class extends Controller {
  connect() {

/* Toggle the side navigation */

      document.querySelector('.my-sidenavbar').addEventListener('click', () => {
        this.toggleNav();
      });

  }
  toggleNav() {
    var sideNav = document.getElementById("mySidenav");
    var mainContent = document.getElementById("main");

    sideNav.classList.toggle("open-sidenav");
    mainContent.classList.toggle("open-main" );
    sideNav.classList.toggle("close-sidenav");
    mainContent.classList.toggle("close-main" );
  }
}
