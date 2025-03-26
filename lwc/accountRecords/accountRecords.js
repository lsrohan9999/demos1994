import { LightningElement,wire} from 'lwc';
import showAccRecords from '@salesforce/apex/AccountController.showAccRecords';
export default class AccountRecords extends LightningElement {

    accList=[];
    tabcols=[
        {
            fieldName:"Name",label:"Account Name"
        },
        {
            fieldName:"Type",label:"Account Type"
        },
        {
            fieldName:"Rating",label:"Account Rating"
        }

    ];

    @wire(showAccRecords) accService;

    show()
    {
        this.accList = this.accService.data;
    }
}