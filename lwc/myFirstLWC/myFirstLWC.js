import { LightningElement } from 'lwc';

export default class MyFirstLWC extends LightningElement 
{

    callme()
    {
        alert('Hi this was executed by lightning');
    }

}