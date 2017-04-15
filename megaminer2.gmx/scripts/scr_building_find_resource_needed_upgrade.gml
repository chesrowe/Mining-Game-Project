///scr_building_find_resource_needed_upgrade(struc)

var struc = argument[0];

for (i = 0; i <= 5; i++;){
    if (struc.upgradeCost[i,2] != -1){
        if (struc.upgradeCost[i,2] > 0){
            if (scr_building_resource_needed_available_upgrade(i, struc)){ 
                return i;
                break;   
            }
        }          
    }else if (struc.upgradeCost[i,0] == -1){
        return -4;
        break;    
    }      
}
