const calcTax=(prodType,price,quan)=>{
    if(prodType=="Apparal" && quan > 100)
    {
        return (quan * price) * 0.25;
    }
    else{
        return (quan * price) * 0.15;
    }
    
}

export {calcTax};