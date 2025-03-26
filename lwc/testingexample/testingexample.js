import { LightningElement } from 'lwc';

export default class Testingexample extends LightningElement 
{
    message = 'Hello world';
    a=10;
    b=20;
    results;

    results=this.a+this.b;
}