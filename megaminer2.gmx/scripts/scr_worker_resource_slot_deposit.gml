///scr_worker_resource_slot_deposit(amount)
//deposits the resources currently in the resource slot

var amount = argument[0];

switch(resourceSlot[0,0]){
    //woodCommon
    case RESOURCES.woodCommon:
        global.woodCommon += amount;
    break;
    
    //woodBirch
    case RESOURCES.woodBirch:
        global.woodBirch += amount;
    break;
    
    //woodOak
    case RESOURCES.woodOak:
        global.woodOak += amount;
    break;
    
    //stone
    case RESOURCES.stone:
        global.stone += amount;
    break;
    
    //oreGold
    case RESOURCES.oreGold:
        global.oreGold += amount;
    break;
    
    //food
    case RESOURCES.food:
        global.food += amount;
    break;
}

resourceSlot[0,0] = RESOURCES.nothing;
resouceSlot[0,1] = 0;




