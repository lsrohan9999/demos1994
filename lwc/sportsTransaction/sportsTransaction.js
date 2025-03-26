import { LightningElement,api } from 'lwc';
export default class SportsTransaction extends LightningElement 
{
    @api custName="John";
    @api prodName="Fishing Rod";
    @api itemCount=3;

    get smallTran()
    {
        return this.itemCount < 10;
    }
    get medTran()
    {
        return this.itemCount >= 10 && this.itemCount < 30;
    }

}