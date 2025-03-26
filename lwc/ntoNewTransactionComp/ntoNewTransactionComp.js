import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
export default class NtoNewTransactionComp extends LightningElement {


        recordId="";
        newForm=true;
    showSuccessMsg(event)
    {
        let sfid = event.detail.id;
        this.recordId=sfid;
        let ev= new ShowToastEvent(
            {
                title:"Transaction details",
                message:"Transaction recorded with ID: "+sfid,
                variant:"Success"
            }
        );
        this.dispatchEvent(ev);
        this.newForm=false;
    }

    get recordCreated()
    {
        return this.recordId!="";
    }

    newTran()
    {
        this.newForm=true;
        this.recordId="";
    }

}