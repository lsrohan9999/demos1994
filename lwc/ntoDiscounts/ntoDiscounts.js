import { LightningElement } from 'lwc';
export default class NtoDiscounts extends LightningElement {

    ctype="";
    discountMsg="";

    inputCustType(event)
    {
        this.ctype=event.target.value;
    }
    showDiscount()
    {
        switch(this.ctype)
        {
            case "Regular":
                this.discountMsg="10% flat Discount";
                break;
            case "Premium":
                this.discountMsg="25% flat Discount";
                break;
            default:
                this.discountMsg="5% flat Discount";
                break;
        }
    }
}