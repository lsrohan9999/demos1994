import { LightningElement,wire } from 'lwc';
import dchannel from '@salesforce/messageChannel/DataChannel__c';
import {publish,MessageContext} from 'lightning/messageService';
export default class BofaOptions extends LightningElement {

    @wire(MessageContext) mcService;

    sendoptions(event)
    {
        let itemName = event.target.name;

        const databind = {"opt":itemName};

        publish(this.mcService,dchannel,databind);
    }

}