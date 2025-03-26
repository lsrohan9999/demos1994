import { LightningElement } from 'lwc';
import loadContact from '@salesforce/apex/ContactController.loadContact';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
export default class ContactForm extends LightningElement 
{
    
    insertRec()
    {
        let confname= this.refs.fn.value;
        let conlname= this.refs.ln.value;
        let conemail= this.refs.em.value;

    loadContact({"fname":confname,"lname":conlname,"cemail":conemail}).then(result=>{
        let ev= new ShowToastEvent(
        {
            title:"Contact Notification",
            message:result,
            variant:"success"
        });

        this.dispatchEvent(ev);
        this.refs.fn.value="";
        this.refs.ln.value="";
        this.refs.em.value="";

        }).catch(error=>{
        let ev= new ShowToastEvent(
        {
            title:"Contact Notification",
            message:error.body.message,
            variant:"error"
        });
            this.dispatchEvent(ev);
        });
    }
}