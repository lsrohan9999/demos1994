import { LightningElement, api } from 'lwc';
export default class SportsProduct extends LightningElement 
{


    @api prodName="Hiking Shoes";
    @api prodCategory="Trekking";
    @api prodCost=50;
}