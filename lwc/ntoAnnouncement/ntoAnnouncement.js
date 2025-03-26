import { LightningElement } from 'lwc';
export default class NtoAnnouncement extends LightningElement 
{
    bannerTxt="Winter Sales of NTO";

    showNotif()
    {
        this.bannerTxt = "Sales begin from Jan 15 2025";
    }

    resetNotif()
    {
        this.bannerTxt = "Winter Sales of NTO";
    }
    
    }