import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
import fname from '@salesforce/schema/Contact.FirstName';
import lname from '@salesforce/schema/Contact.LastName';
import cemail from '@salesforce/schema/Contact.Email';
export default class ContactForm1 extends LightningElement {

    recId='';
    rform=true;

    confields=[fname,lname,cemail];

    showSuccessNotif(event)
    {
        let sfid = event.detail.id;
        this.recId=sfid;
        
        let ev= new ShowToastEvent({
            title:"Contact Notification",
            message:"Contact Successfully inserted with SFID"+sfid,
            variant:"success"
     } );
     this.dispatchEvent(ev);
     this.rform=false;
    }

    get recFound()
    {
        return this.recId!="";
    }

    createcon()
    {
        this.rform="true";
        this.recId="";
    }

}