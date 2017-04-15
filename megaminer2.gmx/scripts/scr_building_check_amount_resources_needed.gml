///scr_building_check_amount_resources_needed();
//Finds the amount left of the resource needed in the warehouse/dropOffTarget
//For use inside the workers

var resource = scr_building_find_resource_needed();

if (resource != -4){
    return target.cost[resource,2];
}


