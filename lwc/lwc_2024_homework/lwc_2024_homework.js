import { LightningElement, track } from 'lwc';

export default class Lwc_2024_homework extends LightningElement 
{
    @track result;
    num1;
    num2;
    num3;

    Number;

    callme(event)
    {
        const evtname= event.target.name;
        if(evtname=='aval')
        {
            this.num1=event.target.value;
        }
        elseif(evtname=='bval')
        {
            this.num2=event.target.value;
        }
        elseif(evtname=='cval')
        {
                this.num3=event.target.value;
        }
        elseif(evtname=='dval')
        {
            this.Number=event.target.value;
        }
        
    }


    greater()
    {
        const a= parseInt(this.num1);
        const b= parseInt(this.num2);
        const c= parseInt(this.num3);

        this.result= (a+b+c);
/*
        if(a>b & a>c)
        {
            this.result = a;
        }
        elseif(b>c & b>a)
        {
            this.result = b;
        }elseif(c>a & c>b)
        {
            this.result = c;
        } */
    }

    sum()
    {
        const d= parseInt(this.Number);
        
        this.result = d+(d-1)+(d-2);
    }
}