import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="roar-button"
export default class extends Controller {
  static values = { sound: String }

  play(event) {
    const audio = new Audio(this.soundValue)
    audio.play()
  }
}
