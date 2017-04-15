///scr_building_resource_needed_available_upgrade(resource,struc)
//checks to see if the resource that is needed to build with is actually available

var resourceNeeded = argument[0];
var struc = argument[1];

switch (struc.upgradeCost[resourceNeeded,0]){
    //woodCommon
    case RESOURCES.woodCommon:
        if (global.woodCommon > 0){
            return true;
        }
    break;
    
    //woodBirch
    case RESOURCES.woodBirch:
        if (global.woodBirch > 0){
            return true;
        }
    break;
    
    //woodOak
    case RESOURCES.woodOak:
        if (global.woodOak > 0){
            return true;
        }
    break;
    
    //stone
    case RESOURCES.stone:
        if (global.stone > 0){
            return true;
        }
    break;
    
    //food
    case RESOURCES.food:
        if (global.food > 0){
            return true;
        }
    break;
    
    //oreGold
    case RESOURCES.oreGold:
        if (global.oreGold > 0){
            return true;
        }
    break;
    
    default: return false;
        
}
