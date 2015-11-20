///scr_building_find_resource_needed()

var target = argument[0] ;
for (i = 0; i <= 3; i++;){
    if (target.upgradeCost[i,2] != -4){
        if (target.upgradeCost[i,2] > 0){
            return i;
            break;   
        }
    }else if (target.upgradeCost[i,0] == -4){
        return -4;
        break;    
    }
}
