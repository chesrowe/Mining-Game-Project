///scr_unit_change_substate(substate)
//Changes the worker to the defined substate

var substateArg = argument[0];


substate = substateArg
workTimer = 0;
moveToTimer = 0;
middleTimer = 0;
waitingToWorkTimer = 0;



//substate specfic variable changes
switch (substateArg){
    //Tool
    case SUBSTATES_WORKER.toolPullout:
        image_index = 0; 
        drawToolTimer = 0;
    break;
    
    //Working
    case SUBSTATES_WORKER.working:
        workingLenDirX = lengthdir_x(12, point_direction(x, y, target.x, target.y));
        workingLenDirY = lengthdir_y(13, point_direction(x, y, target.x, target.y));
        workTimer = 0;
        image_index = 0; 
        //Set the sprite based on the target type
        if (object_is_ancestor(target.object_index, obj_treeParent)){
            sprite_index = spriteWoodcutting;
            image_speed = woodcuttingImageSpeed;
        }
        if (object_is_ancestor(target.object_index, obj_resourceParent)){
            sprite_index = spriteMining;
            image_speed = miningImageSpeed;
        }
        if (object_is_ancestor(target.object_index, obj_buildingParent)){
            sprite_index = spriteBuilding;
            image_speed = buildingImageSpeed;
        }
        if (target.object_index == obj_farmingPatch){
            sprite_index = spriteFarming;
            image_speed = buildingImageSpeed;
        }
    break;
    
    //goingTo
    case SUBSTATES_WORKER.goingTo:
        scr_worker_randomize_mid_time(target);
        scr_worker_randomize_move_to_time();
        scr_worker_randomize_work_time(target);
        idleTimer = 0;
        image_speed = walkingImageSpeed;    
        if (state == STATES_WORKER.building || state == STATES_WORKER.upgrading){
            sprite_index = spriteWalkingResources;
        }else{
            if (!scr_worker_resource_slot_is_empty()){
                sprite_index = spriteWalkingResources;
            }else{
                sprite_index = spriteWalking;
            }
            //If the worker is holding resources, make him take those to the warehouse first
            if (resourceSlot[0,0] != RESOURCES.nothing){
                scr_unit_change_substate(SUBSTATES_WORKER.resourceDropOff);
            }
        }
    break;
    
    //resourceDropOff
    case SUBSTATES_WORKER.resourceDropOff:
        sprite_index = spriteWalkingResources;
        image_speed = walkingImageSpeed; 
        scr_sprite_face_xpoint(dropOffTarget.x);  
        scr_worker_randomize_mid_time(dropOffTarget); 
        scr_worker_randomize_move_to_time();
    break;
    
    //resourcePickUp
    case SUBSTATES_WORKER.resourcePickup:
        //If the worker already has the type of resource needed in his resourceSlot then start him towards the structure
        var resourceNeeded = scr_building_find_resource_needed();
        if (resourceNeeded != noone && target.cost[resourceNeeded,0] == resourceSlot[0,0]){
            scr_unit_change_substate(SUBSTATES_WORKER.goingTo);
        }else{
            sprite_index = spriteWalking;
            image_speed = walkingImageSpeed; 
            scr_sprite_face_xpoint(dropOffTarget.x);   
            scr_worker_randomize_mid_time(dropOffTarget);
            scr_worker_randomize_move_to_time();
        }
    break;
    
    //resourcePosition
    case SUBSTATES_WORKER.resourcePosition:
        resourceDir = scr_unit_dir_x(target.x + target.orgXAdd);
        sprite_index = spriteWalking;
        image_xscale = -(resourceDir);
        positionTime = target.posTime;
        positionTimer = 0;
    break;
    
    //sitting
    case SUBSTATES_WORKER.sitting:
        image_index = 0;
        idleTimer = 0;   
        image_speed = .10; 
    break;
    
    //waitingToWork
    case SUBSTATES_WORKER.waitingToWork:
        sprite_index = spriteIdle;
        image_speed = idleImageSpeed;
    break;
}







