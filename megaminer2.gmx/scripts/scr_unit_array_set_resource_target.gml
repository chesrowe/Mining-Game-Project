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
            if (state == 'building'){
                gettingResources = 1;
                goingTo = 0;
            }else{
                gettingResources = 0;
                goingTo = 1;
            }
            comingFrom = 0;
            mineStart = 0;
            miningTimer = 0;
            cutStart = 0;
            cuttingTimer = 0;
            selected = 0;
            moveToTimer = 0;
            workStart = 0;
            middleTime = (target.midTime + irandom(target.midRandom));
            if (point_distance(x,y,target.x,target.y) < target.posDistance){
                if (x > target.x){
                    resourcePosition = 2;
                    positionTime = target.posTime;
                    sprite_index = spriteWalkingRightFull;
                }else{
                    resourcePosition = 1;
                    positionTime = target.posTime;
                    sprite_index = spriteWalkingLeftFull;
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
            