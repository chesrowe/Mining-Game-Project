///scr_unit_array_check_for_worker()
//This script checks to see if any of the selected units are workers

for (i = 0;i < 100;i++){
    if ((object_is_ancestor(global.unitSelected[i].object_index,obj_workerParent))){
        return 1;  
        break;  
    }else if (global.unitSelected[i] == noone){
        return 0;
        break;    
    }
}
