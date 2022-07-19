import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="link"
export default class extends Controller {
  static targets =["link"]
  
  connect() {
    console.log(`>> hello there!`);
  }
  
  onRollOver() {
    // console.log(`>> roll over!`);
  }
 
  onRollOut() {
    // console.log(`>> roll out!`);
  }
 
  onClick() {
    // console.log(`>> click!`);
  }
}
