import { LightningElement, wire } from 'lwc';
import dChannel from '@salesforce/messageChannel/DataChannel__c';
import {subscribe,MessageContext} from 'lightning/messageService';

export default class BofaBody extends LightningElement {

    @wire(MessageContext) mcService;

    bankOption="";

    connectedCallback() {
        if(this.mcService!=null)
        {
            subscribe(this.mcService,dChannel,(databind=>{this.processData(databind)}));
        }
    }

    processData(databind)
    {
        this.bankOption=databind.opt;
    }
}