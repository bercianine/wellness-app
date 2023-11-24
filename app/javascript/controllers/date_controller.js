import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="date"
export default class extends Controller {
  static targets = ["addElement", "dates"]

  connect() {
    this.datesValue = []
  }

  add() {
    this.addElementTarget.insertAdjacentHTML("beforeend", `
      <input class="form-control string optional flatpickr-input mb-2"
      data-action="change->date#populate"
      data-controller="datepicker"
      type="text" value="" name="activity[available_dates]"
      id="activity_available_dates"
      readonly="readonly">
    `)
  }

  populate(e) {
    this.datesValue.push(e.target.value)
    this.datesTarget.value = this.datesValue
  }
}
