///scr_building_find_resource_needed()

for (i = 0; i <= 5; i++;){
    if (target.cost[i,2] != -1){
        if (target.cost[i,2] > 0){
            if (scr_building_resource_needed_available(i)){ 
                return i;
                break;   
            }
        }          
    }else if (target.cost[i,0] == -1){
        return -4;
        break;    
    }      
}
