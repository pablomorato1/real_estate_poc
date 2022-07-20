import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="property-card"
export default class extends Controller {
    static targets = ["card", "request"];
    
    connect() {
    }
    
    navigateToDetails({params: {url}}) {
        window.location = url;
    }
    
    sendBuyRequest({params: {url}}) {
        // TODO: send request here
        console.log(`>> click request`, id);
    }
}
