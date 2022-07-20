import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="property-card"
export default class extends Controller {
    static targets = ["card", "request"];
    
    connect() {
        // console.log(`>> hello`, this.element.innerHTML);
    }
    
    navigateToDetails({params: {id}}) {
        console.log(`>> click card`, id);
    }
    
    sendBuyRequest({params: {id}}) {
        console.log(`>> click request`, id);
        
    }
}
