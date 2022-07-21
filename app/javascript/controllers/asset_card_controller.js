import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="asset-card"
export default class extends Controller {
    connect() {
    }
    
    navigateToDetails({params: {url}}) {
        window.location = url;
    }
    
    sendBuyRequest({params: {url}}) {
        // TODO: send request here
        console.log(`>> asset request`, url);
        
        window.alert(`plz open link ${url}`);
    }
}
