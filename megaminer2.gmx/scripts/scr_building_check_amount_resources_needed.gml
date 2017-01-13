///scr_building_check_amount_resources_needed();
//Finds the amount left of the resource needed in the warehouse/dropOffTarget
//For use inside the workers

var resource = scr_building_find_resource_needed();

switch(cost[resource,0]){
    //woodCommon
    case RESOURCES.woodCommon:
        return global.woodCommon;
    break;
    
    //woodOak
    case RESOURCES.woodOak:
        return global.woodOak;
    break;
    
    //woodBirch
    case RESOURCES.woodBirch:
        return global.woodBirch;
    break;
    
    //
    
}


