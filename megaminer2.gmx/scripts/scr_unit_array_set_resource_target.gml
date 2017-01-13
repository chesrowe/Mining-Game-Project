///scr_unit_array_set_resource_target(state,target);

//Sets the selected workers to working on a defined resource

//arugment 0 : what state to set the selected workers to
//arugment 1 : What instance to set as the target

for(i = 0; i < 100; i++){
    if (instance_exists(global.unitSelected[i]) && global.unitSelected[i].object_index == obj_workerHumanP1){
        with (global.unitSelected[i]){
            //Set the dropOffTarget for the worker
            if (instance_exists(obj_warehouse)){
                dropOffTarget = obj_warehouse;
            }
            target = argument1.id;
            targetType = argument1.object_index;
            state = argument0;
            if (state == STATES_WORKER.building || state == STATES_WORKER.upgrading){
                scr_unit_change_substate(SUBSTATES_WORKER.resourcePickup);
                
            }else{
                if (scr_find_x_diff(x, target.x) < target.posDistance){
                    scr_unit_change_substate(SUBSTATES_WORKER.resourcePosition);
                }else if (scr_find_x_diff(x, target.x) > target.posDistance && scr_find_x_diff(x, target.x) > target.midDistance){
                    scr_unit_change_substate(SUBSTATES_WORKER.goingTo);    
                }else{
                    scr_unit_change_substate(SUBSTATES_WORKER.toolPullout);
                }    
            }
            workTimer = 0;
            selected = false;
            moveToTimer = 0;
            middleTimer = 0;
            middleTime = (target.midTime + irandom(target.midRandom));
        }
    }else if global.unitSelected[i] = noone{
            //clear unit array
            scr_unit_array_clear();
            break;
    }
                
}

            
