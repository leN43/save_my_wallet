import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="searchbouton"
export default class extends Controller {
  display() {
    $('.close').click(function(){
    $('ul').toggleClass('active');
  })
  }
}
