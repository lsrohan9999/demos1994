import { LightningElement } from 'lwc';
import frm from '@salesforce/client/formFactor';
export default class BofaHome extends LightningElement {
    
    get desktoportab()
    {
        return frm=="Large" || frm=="Medium";
    }

    get phone()
    {
        return frm=="Small";
    }

}