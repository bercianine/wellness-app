import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="date"
export default class extends Controller {
  static targets = ["addElement"]

  add() {
    this.addElementTarget.insertAdjacentHTML("beforeend", `<input class="form-control string optional flatpickr-input" data-controller="datepicker" type="text" value="" name="activity[available_dates]" id="activity_available_dates" readonly="readonly">`);
  }
}
