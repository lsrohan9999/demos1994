import { LightningElement,api } from 'lwc';

export default class Lwc_2024_ldseditform extends LightningElement 
{
    @api recordId;

    clearme(event)
    {
        //alert("Hi");
        const inputFields = this.template.querySelectorAll("lightning-input-field");
       // alert("Hi2");
        //alert(inputFields);
        inputFields.forEach(field=>
                        {
                           // alert("Hi3 for foreach");
                           // field.reset();
                           field.value="";
                        }
                    );
    }
}