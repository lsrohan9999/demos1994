import { LightningElement } from 'lwc';
import showOpps from '@salesforce/apex/OpportunityController.showOpps';
export default class OppRecords extends LightningElement {

opplist=[];
tabcols=[
    {fieldName:"Name",label:"Opp Name"},
    {fieldName:"StageName",label:"Opp Stage"},
    {fieldName:"CloseDate",label:"Opp Close Date"}
];

spinnerval=false;

show()
{
    this.spinnerval=true;
    showOpps().then(result=>{
        this.opplist = result;
        this.spinnerval=false;
    }).catch(error=>{
        cosole.log(error.body.message);
        });
}
}