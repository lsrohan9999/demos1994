import { LightningElement,track } from 'lwc';

export default class Lwc_input2_calculate extends LightningElement 
{

    @track resvalue;
    num1;
    num2;

    callme(event)
    {
        const evtname = event.target.name;
        if(evtname == 'aval')
        {
            this.num1 = event.target.value
        }
        else
        {
            this.num2 = event.target.value
        }
    }

    addme()
    {
        const a = parseInt(this.num1);
        const b = parseInt(this.num2);
        this.resvalue = 'Sum of Given Numbers is ' +(a+b);
    }

    sub()
    {
        const a = parseInt(this.num1);
        const b = parseInt(this.num2);
        this.resvalue = 'Subtraction of Given Numbers is ' +(a-b);
    }

    mul()
    {
        const a = parseInt(this.num1);
        const b = parseInt(this.num2);
        this.resvalue = 'Multiplication of Given Numbers is ' +(a * b);
    }




    
}