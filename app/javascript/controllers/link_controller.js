import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="link"
export default class extends Controller {
    static targets = ["item"];
    
    connect() {
        this.itemTargets.map((item) => {
            if (item.attributes.href.value === window.location.pathname) {
                item.classList.add('siNavbar_link__selected')
                // item.querySelector('img').setAttribute('src', '/images/icon-dashboard-hover.svg')
            } else {
                // item.querySelector('img').setAttribute('src', '/images/icon-dashboard.svg')
            }
        })
    }
}
