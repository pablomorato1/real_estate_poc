import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="i18n"
export default class I18nController extends Controller {
    static getNavigatorLanguage = () => {
        if (navigator.languages && navigator.languages.length) {
            return navigator.languages[0];
        } else {
            return navigator.userLanguage || navigator.language || navigator.browserLanguage || 'en';
        }
    };
    static targets = ["$", "percent"];
    static language = I18nController.getNavigatorLanguage();
    
    initialize() {
        super.initialize();
        
        this.$format = new Intl.NumberFormat(I18nController.language, {
            style: 'currency',
            currency: 'USD',
            minimumFractionDigits: 0,
            maximumFractionDigits: 2,
        }).format;
        this.percentsFormat = new Intl.NumberFormat(I18nController.language, {
            style: 'percent',
            minimumFractionDigits: 0,
            maximumFractionDigits: 2,
        }).format;
        this.decimalFormat = new Intl.NumberFormat(I18nController.language, {
            style: 'decimal',
            minimumFractionDigits: 0,
            maximumFractionDigits: 2,
        }).format;
    }
    
    $TargetConnected(element) {
        element.innerText = this.$format(element.innerText);
    }
    
    percentTargetConnected(element) {
        element.innerText = element.innerText.replace('%', '')
        if (element.innerText.includes('-')) {
            const [first, second] = element.innerText.split('-');
            element.innerText = `${this.decimalFormat(first)}-${this.percentsFormat(second / 100)}`;
        } else {
            element.innerText = this.percentsFormat(element.innerText / 100);
        }
    }
}
