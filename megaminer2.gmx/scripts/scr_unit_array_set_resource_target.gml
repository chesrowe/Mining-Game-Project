///scr_unit_array_set_resource_target(state);

//Sets the selected workers to working on a defined resource

//arugment 0 : what state to set the selected workers to

for(i = 0;i < 100;i++){
    if (global.unitSelected[i].object_index == obj_workerHumanP1){
        with (global.unitSelected[i]){
            target = other.id;
            state = argument0;
            goingTo = 1;
            comingFrom = 0;
            mineStart = 0;
            miningTimer = 0;
            cutStart = 0;
            cuttingTimer = 0;
            selected = 0;
            moveToTimer = 0;
            if (point_distance(x,y,target.x,target.y) < 24){
                if (x > target.x){
                    resourcePosition = 2;
                    sprite_index = spriteWalkingRightFull;
                }else{
                    resourcePosition = 1;
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
            