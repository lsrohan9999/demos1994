import { LightningElement, track } from 'lwc';

export default class MySecondLwc extends LightningElement 
{

    @track resvalue;
    num1;
    num2;

    callme(event)
    {
        const evtname= event.target.name;
        if(evtname=='aval')
        {
            this.num1=event.target.value;
        }
        else
        {
            this.num2=event.target.value;
        }
    }

    addme()
    {
    const a = parseInt(this.num1);
    const b = parseInt(this.num2);
        this.resvalue='Sum of Two Numbers is ::' +(a+b);
    }

    subme()
    {
    const a = parseInt(this.num1);
    const b = parseInt(this.num2);
        this.resvalue='Sum of Two Numbers is ::' +(a-b);
    }

    mulme()
    {
    const a = parseInt(this.num1);
    const b = parseInt(this.num2);
        this.resvalue='Sum of Two Numbers is ::' +(a*b);
    }





}