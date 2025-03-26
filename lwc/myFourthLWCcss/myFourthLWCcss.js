import { LightningElement, track } from 'lwc';

export default class MyFourthLWCcss extends LightningElement
{
 @track Name;

 callme(event)
 {
    this.Name= event.target.value;
 }
}