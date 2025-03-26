import { LightningElement,wire } from 'lwc';
import ochannel from '@salesforce/messageChannel/OptionChannel__c';
import {publish,MessageContext} from 'lightning/messageService';

export default class NtoOptions extends LightningElement {
    @wire(MessageContext) wservice;

    sendopt(event)
    {
        let itemname = event.target.name;

        const odata={"opt":itemname};

        publish(this.wservice,ochannel,odata);

    }

}