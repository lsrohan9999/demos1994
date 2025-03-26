import { LightningElement } from 'lwc';

export default class Lwz_ex3_array extends LightningElement 
{
    cities=['Belgaum','Mumbai','Pune','Delhi'];
    employee={'Name':'Rohan','Age':29,'City':'Belgaum','Salary':20000};


    employees=
    [
        {'Name':'Rohan','Age':29,'City':'Belgaum','Salary':20000},
        {'Name':'Rahul','Age':27,'City':'Goa','Salary':25000},
        {'Name':'Rohit','Age':25,'City':'Pune','Salary':30000},
        {'Name':'Kittu','Age':20,'City':'Dubai','Salary':35000}
    ]
}