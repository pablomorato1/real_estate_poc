import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="property-card"
export default class extends Controller {
    static targets = ["card", "request"];
    
    connect() {
    }
    
    navigateToDetails({params: {id}}) {
        window.location = `/properties/${id}/overview`;
    }
    
    sendBuyRequest({params: {id}}) {
        // TODO: send request here
        console.log(`>> click request`, id);
    }
}
