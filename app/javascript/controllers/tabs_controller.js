import { Controller } from "@hotwired/stimulus";
import { Tab } from "bootstrap";

// Connects to data-controller="tabs"
export default class extends Controller {
    static targets = ["item"];
    
    connect() {
    }
    
    handleItemClick(event) {
        if ('URLSearchParams' in window) {
            const tabId = event.target.id.replace('-tab', '');
            const params = new URLSearchParams(window.location.search);
            params.set("tab", tabId);
            
            const newRelativePathQuery = window.location.pathname + '?' + params.toString();
            history.pushState(null, '', newRelativePathQuery);
        }
    }
    
    itemTargetConnected(element) {
        element.addEventListener('click', this.handleItemClick);
        
        if (element.getAttribute('aria-selected') === 'true') {
            const tab = new Tab(element)
            tab.show()
        }
    }
    
    itemTargetDisconnected(element) {
        element.removeEventListener('click', this.handleItemClick);
    }
}
