import { LightningElement,wire } from 'lwc';
import showProducts from '@salesforce/apex/NTOProductController.showProducts';
export default class NtoProductsComp extends LightningElement {

    prodList=[];

    @wire(showProducts) prodservice({data,error}){
        if(data)
        {
            this.prodList=data;
        }
        if(error)
        {
            console.log(error.body.messsage);
        }
    }

}