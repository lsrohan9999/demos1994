import { LightningElement } from 'lwc';
import showTransactions from '@salesforce/apex/NTOTransactionController.showTransactions';
import {NavigationMixin} from 'lightning/navigation';
import deleteTransactions from '@salesforce/apex/NTOTransactionController.deleteTransactions';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
import deleteMultiRows from '@salesforce/apex/NTOTransactionController.deleteMultiRows';
export default class NtoTransactionRecords extends NavigationMixin(LightningElement) 
{


    recList=[];
    srows=[];
    tabcols=[
        {label:"Tran Number", fieldName:"Name"},
        {label:"Cutomer", fieldName:"Customer__c"},
        {label:"Product", fieldName:"pname"},
        {label:"Price", fieldName:"pprice"},
        {label:"Quantity", fieldName:"Quantity__c"},
        {label:"Total Cost", fieldName:"totcost"},
        {type:"action",typeAttributes:{rowActions:[{label:"Edit",name:"Edit"},{label:"Delete",name:"Delete"}]}}
    ];

    renderedCallback() {
        
        showTransactions().then(result=>{
            for(let i=0;i<result.length;i++)
            {
                result[i].pname = result[i].Product__r.Name;
                result[i].pprice = result[i].Product__r.Price__c;
                result[i].totcost = result[i].Product__r.Price__c*result[i].Quantity__c;
            }
            this.recList=result;
        }).catch(error=>{
            console.log(error.body.message)
            });
    }

    handleActions(event)
    {
        let sfid= event.detail.row.Id;

        if(event.detail.action.name=="Edit")
        {
            let editpage={type:"standard__recordPage",attributes:{recordId:sfid,actionName:"edit"}};
            this[NavigationMixin.Navigate](editpage);
        }

        if(event.detail.action.name=="Delete")
        {
            deleteTransactions({"rid":sfid}).then(result=>{
                let ev=new ShowToastEvent(
                    {
                        title:"Transaction Notification",
                        message:result,
                        variant:"success"
                    }
                );
                this.dispatchEvent(ev);
            }).catch(error=>{
                console.log(error.body.message);
            });
        }
    }

handleMultipleRows(event)
{
    let tabrows = event.detail.selectedRows;
    let rowids=[];
    for(let i=0;i<tabrows.length;i++)
    {
        rowids.push(tabrows[i].Id);
    }
    this.srows= rowids;
}

get multirows()
{
    return this.srows!="";
}

deleteMultiple()
{
    let confirmmsg = confirm("Do you want to delete");
    if(confirmmsg){
    deleteMultiRows({"idList":this.srows}).then(result=>{
        let ev = new ShowToastEvent(
            {
                title:"Record Deletion",
                message:result,
                variant:"success"
            }
        );
        this.dispatchEvent(ev);

    }).catch(error=>{
        console.log(error.body.message);
    });

    }
}


}