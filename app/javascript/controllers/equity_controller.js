import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="equity"
export default class extends Controller {
  connect() {
  }
  
  sendBuyRequest({params: {url}}) {
      // TODO: send request here
      
      window.alert(`>> BUY NEW ASSET ${url}`)
  }
  
  sendBuyInRequest({params: {url}}) {
      // TODO: send request here
      
      window.alert(`>> BUY IN EXISTING ASSET ${url}`)
  }
  
  sendSellRequest({params: {url}}) {
      // TODO: send request here
      
      window.alert(`>> SELL ASSET ${url}`)
  }
}
