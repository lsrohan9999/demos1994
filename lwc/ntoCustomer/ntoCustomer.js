import { LightningElement } from 'lwc';
export default class NtoCustomer extends LightningElement {
    custMessage="";

    saveDetails()
    {
        let cname = this.refs.cn.value;
        let cphone = this.refs.cp.value;
        let email = this.refs.ce.value;

        this.custMessage ="Welcome "+cname+"to NTO Group. Your Phone "+cphone+" is registered and you receive WELCOME on your "+email;
    }

    get messageCreated()
    {
        return this.custMessage!="";
    }

    clearForm()
    {
       /* let control = this.template.this.template.querySelectorAll("Lightning-input");
        for(let i=0;i<controls.length;i++)
        {
            controls[i].value="";
        } */
        this.refs.cn.value="";
        this.refs.cp.value="";
        this.refs.ce.value="";
        this.custMessage="";
    }
}