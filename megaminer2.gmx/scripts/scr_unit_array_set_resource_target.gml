///scr_unit_array_set_resource_target(state,target);

//Sets the selected workers to working on a defined resource

//arugment 0 : what state to set the selected workers to
//arugment 1 : What instance to set as the target

for(i = 0;i < 100;i++){
    if (instance_exists(global.unitSelected[i]) && global.unitSelected[i].object_index == obj_workerHumanP1){
        with (global.unitSelected[i]){
            target = argument1.id;
            targetType = argument1.object_index;
            state = argument0;
            if (state == STATES_WORKER.building || state == STATES_WORKER.upgrading){
                gettingResources = true;
                goingTo = false;
            }else{
                gettingResources = false;
                goingTo = true;
            }
            comingFrom = false;
            workStart = false;
            workTimer = 0;
            selected = false;
            moveToTimer = 0;
            middleTimer = 0;
            middleTime = (target.midTime + irandom(target.midRandom));
            if (point_distance(x, y, target.x, target.y) < target.posDistance){
                if (x > target.x){
                    resourcePosition = 2;
                    positionTime = target.posTime;
                    sprite_index = spriteWalking;
                }else{
                    resourcePosition = 1;
                    positionTime = target.posTime;
                    sprite_index = spriteWalking;
                }
                goingTo = 0;
            }
        }
    }else if global.unitSelected[i] = noone{
            //clear unit array
            scr_unit_array_clear();
            break;
    }
                
}

            
