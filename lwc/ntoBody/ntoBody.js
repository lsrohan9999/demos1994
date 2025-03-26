import { LightningElement,wire } from 'lwc';
import ochannel from '@salesforce/messageChannel/OptionChannel__c';
import {subscribe,MessageContext} from 'lightning/messageService';
export default class NtoBody extends LightningElement {

    @wire(MessageContext) wservice;

    optval="home";

    connectedCallback() {
        if(this.wservice!=null)
        {
            subscribe(this.wservice,ochannel,(odata=>{this.processData(odata)}));
        }
    }

    processData(odata)
    {
        this.optval=odata.opt;
    }

    get showHome()
    {
        return this.optval=="home";
    }

    get showProds()
    {
        return this.optval=="products";
    }
}