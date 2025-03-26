import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
export default class NtoNotification extends LightningElement 
{

    showNotif()
    {
        var ev=new ShowToastEvent(
            {
                title:"Welcome to NTO",
                message:"NTO welcomes new Salesforce Admin to thier Sales department",
                variant:"success"
            }
        );

        this.dispatchEvent(ev);
    }

}