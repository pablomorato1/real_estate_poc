import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="dropdown"
export default class extends Controller {
    static targets = ["item", "title"];
    
    defaultTitle = '';
    
    connect() {
        this.defaultTitle = this.titleTarget.innerText;
        
        this.itemTargets.forEach((item, index) => {
            if (item.dataset.default !== undefined) {
                this.titleTarget.innerHTML = `${this.defaultTitle} ${item.innerText}`;
            }
        });
    }
    
    selectItem(event) {
        this.titleTarget.innerHTML = `${this.defaultTitle} ${event.target.innerText}`;
    }
}
