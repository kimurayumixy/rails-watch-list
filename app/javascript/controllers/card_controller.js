import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="card"
export default class extends Controller {
  connect() {
    console.log("Hello card")
  }
  biggerCard() {
    this.cardTarget.setAttribute = ( "border", "border-5" )
  }
}
