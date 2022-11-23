import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-price"
export default class extends Controller {
  static targets = ["totalPrice", "startDate", "endDate", "button"]
  static values = { dinoPrice: Number }
  connect() {
  }

  compute() {
    const endDate = new Date(this.endDateTarget.value)
    const startDate = new Date(this.startDateTarget.value)
    const diff = endDate - startDate
    console.log(startDate)
    console.log(Date.now())
    if (this.startDateTarget.value==="" || this.endDateTarget.value==="" || diff < 0 ) return this.#bookingError()

    const diffDays = diff / 1000 / 60 / 60 / 24
    const totalPrice = this.dinoPriceValue * diffDays
    this.totalPriceTarget.innerHTML = `${totalPrice} €`
    this.buttonTarget.removeAttribute("disabled")
  }

  #bookingError() {
    this.totalPriceTarget.innerHTML = "Invalid Dates !"
    this.buttonTarget.setAttribute("disabled", "")
  }
}
