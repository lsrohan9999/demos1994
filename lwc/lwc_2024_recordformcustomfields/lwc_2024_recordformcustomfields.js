import { LightningElement, api } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import PHONE_FIELD from '@salesforce/schema/Account.Phone';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import WEBSITE_FIELD from '@salesforce/schema/Account.Website';

export default class Lwc_2024_recordformcustomfields extends LightningElement 
{
    @api recordid;
 abc = ACCOUNT_OBJECT;
 
 myFields = [NAME_FIELD,PHONE_FIELD,INDUSTRY_FIELD,WEBSITE_FIELD];

}