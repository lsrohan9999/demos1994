import { LightningElement } from 'lwc';
export default class NtoDirector extends LightningElement {

approvalMsg="";

    handlediscount(event)
    {
        let cprodname = event.detail.prodname;
        let cproddiscount = event.detail.proddiscount;

        this.approvalMsg = "Please approve " +cproddiscount+"% for the product "+cprodname;

    }

    get msgFound()
    {
        return this.approvalMsg!="";
    }
}