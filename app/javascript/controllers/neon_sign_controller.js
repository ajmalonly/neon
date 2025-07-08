import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["textInput", "fontSelector", "colorPicker", "previewText"]

  connect() {
    this.updatePreview()

    // Listen for changes and updates
    this.textInputTarget.addEventListener("input", () => this.updatePreview())
    this.fontSelectorTarget.addEventListener("change", () => this.updatePreview())
    this.colorPickerTarget.addEventListener("input", () => this.updatePreview())
  }

  updatePreview() {
    const text = this.textInputTarget.value || "Your Neon Sign"
    const font = this.fontSelectorTarget.value
    const color = this.colorPickerTarget.value

    this.previewTextTarget.textContent = text
    this.previewTextTarget.style.fontFamily = font
    this.previewTextTarget.style.color = color
    this.previewTextTarget.style.textShadow = `0 0 10px ${color}, 0 0 20px ${color}, 0 0 30px ${color}`
  }
}

