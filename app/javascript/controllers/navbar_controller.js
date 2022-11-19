import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  connect() {
  }

  updateNavbar(){
    if(window.scrollY >= window.innerHeight) {
      console.log("Hello from navbar");
      this.element.classList.add("navbar-white")
    }
    else {
      this.element.classList.remove("navbar-white")
    }
  }
}
