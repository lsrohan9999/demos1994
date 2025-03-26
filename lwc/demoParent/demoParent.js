import { LightningElement } from 'lwc';
export default class DemoParent extends LightningElement {
    hcomp=false;

    load()
    {
        this.hcomp=true;
    }

    remove()
    {
        this.hcomp=false;
    }

}