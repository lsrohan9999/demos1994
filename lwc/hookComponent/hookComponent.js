import { LightningElement } from 'lwc';
export default class HookComponent extends LightningElement {

    constructor()
    {
        super();
        console.log("Cnnstructor method called in execution...");
        alert("Constructor Called")
    }

    connectedCallback() {
        console.log("ConnectedCallback method called in execution...");
    }
    renderedCallback() {
        console.log("RenderedCallback method called in execution...");
    }
    disconnectedCallback() {
        console.log("DisconnectedCallback method called in execution...");
    }
    
}