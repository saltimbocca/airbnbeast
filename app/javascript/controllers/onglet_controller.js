import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = ["owner", "user"]

  connect() {
    console.log("Hello from our first Stimulus controller")
  }

  hide() {
    // console.log(this.ownerTarget.classList.value)
      this.ownerTarget.classList.toggle('d-none');
      this.userTarget.classList.toggle('d-none');
    }


}
