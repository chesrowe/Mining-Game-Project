///scr_building_find_resource_needed()

for (i = 0; i <= 3; i++;){
    if (target.cost[i,2] != -1){
        return i;
        break;   
    }else if (target.cost[i,0] == -1){
        return -4;
        break;    
    }
}
