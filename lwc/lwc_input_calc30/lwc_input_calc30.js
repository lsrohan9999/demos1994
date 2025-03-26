import { LightningElement,track } from 'lwc';

export default class Lwc_input_calc30 extends LightningElement 
{
    @track resvalue;
    num1;
    num2;

    callme1(event)
    {
        this.num1=event.target.value
    }

    callme2(event)
    {
        this.num2=event.target.value
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