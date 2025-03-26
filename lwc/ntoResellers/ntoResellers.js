import { LightningElement } from 'lwc';
export default class NtoResellers extends LightningElement
{
    sellerList=["Asleys Sports","Karim Outdoors","Luigi Sports","Rose Outdoors"];

    sellerDetailedList=[
        {
            name:"Asleys Sports",
            loc:"Pheonix",
            state:"Texax"
        },
        {
            name:"Karim Outdoors",
            loc:"CapeTown",
            state:"SA"
        },
        {
            name:"Luigi Sports",
            loc:"Nantes",
            state:"France"
        },
        {
            name:"Rose Outdoors",
            loc:"Wellington",
            state:"Ireland"
        }
    ];

    tabcols=[
        {
            fieldName:"name",
            label:"Seller Name"
        },
        {
            fieldName:"loc",
            label:"Seller Location"
        },
        {
            fieldName:"state",
            label:"Seller State"
        }
    ]
}