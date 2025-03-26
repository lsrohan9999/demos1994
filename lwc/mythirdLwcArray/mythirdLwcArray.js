import { LightningElement } from 'lwc';

export default class MythirdLwcArray extends LightningElement {

    cities=['Hyd','Chennai','Mumbai','Delhi','Pune'];
    employee={'name':'Rohan','age':'29','city':'Belgaum','salary':10000};

    employees=[
                {'name':'Rohan','age':'29','city':'Belgaum','salary':10000},
                {'name':'Rohit','age':'25','city':'Khanapur','salary':20000},
                {'name':'Rahul','age':'27','city':'Khanapur','salary':30000},
                {'name':'Shahbaz','age':'31','city':'Lattur','salary':40000},
                {'name':'Nagraj','age':'31','city':'Banglore','salary':50000}
            ];
}