import { LightningElement } from 'lwc';
import {calcTax} from 'c/serviceComp';
export default class NtoSales extends LightningElement {

    ptax=0;

    calc()
    {
        let pquantity=this.refs.pq.value;
        let pprice=this.refs.pp.value;

        this.ptax=calcTax("Apparal",pprice,pquantity);
    }

}