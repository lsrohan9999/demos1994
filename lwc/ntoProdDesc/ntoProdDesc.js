import { LightningElement } from 'lwc';
export default class NtoProdDesc extends LightningElement {


    prodDesc="";

    showDesc(event)
    {
        let btnControl = event.target;

        switch(btnControl.label)
        {
            case "WindSheeter" :
                this.prodDesc="Jacket to cover severe Climate";
                break;
            case "ActionCam" :
                this.prodDesc="To Capture Quality Videos";
                break;
            case "Drone" :
                this.prodDesc="To Capture WholeScape";
                break;
            case "LoopRope" :
                this.prodDesc="Used for severe things";
                break;
            
        }
    }
}