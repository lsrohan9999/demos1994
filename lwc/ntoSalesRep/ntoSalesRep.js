import { LightningElement } from 'lwc';
export default class NtoSalesRep extends LightningElement {

send()
{
    let pname = this.refs.pn.value;
    let pdiscount = this.refs.ds.value;

    const cdata = {"prodname":pname,"proddiscount":pdiscount};

    let ev = new CustomEvent("discountevent",{detail:cdata,bubbles:true,composed:true});
    this.dispatchEvent(ev);
}
}