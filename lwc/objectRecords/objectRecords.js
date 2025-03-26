import { LightningElement,wire } from 'lwc';
import showObjRecords from '@salesforce/apex/ObjectController.showObjRecords';
export default class ObjectRecords extends LightningElement {

    objList=[];
    tabcols=[
        {fieldName:"Name",label:"Record Name"}
    ];

    sobjectname="";
    errorMsg="";

    @wire(showObjRecords,{"objname":"$sobjectname"}) objfn({data,error})
    {
        if(data)
        {
            this.objList=data;
            this.errorMsg="";
        }
        if(error)
        {
            if(!error.body.message.includes("EOF"))
            {
                 this.errorMsg= error.body.message;
                 this.objList=[];
            }
           
        }
    }

    show()
    {
        this.sobjectname=this.refs.obj.value;
    }

    get tranError()
    {
        return this.errorMsg!="";
    }


}