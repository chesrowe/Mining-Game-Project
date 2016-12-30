///scr_unit_change_substate(substate)
//Changes the worker to the defined substate

var substateArg = argument[0];


substate = substateArg
workTimer = 0;
moveToTimer = 0;
middleTimer = 0;



//substate specfic variable changes
switch (substateArg){
    //Tool
    case SUBSTATES_WORKER.toolPullout:
        image_index = 0; 
        workStart = true;
        drawToolTimer = 0;
    break;
    
    //Working
    case SUBSTATES_WORKER.working:
        workingLenDirX = lengthdir_x(12, point_direction(x, y, target.x, target.y));
        workingLenDirY = lengthdir_y(13, point_direction(x, y, target.x, target.y));
        workTimer = 0;
        workTime = (target.workTimeBase + target.workTimeAdd);
        sprite_index = spriteWoodcutting;
        image_index = 0; 
        image_speed = woodcuttingImageSpeed;
    break;
    
    //goingTo
    case SUBSTATES_WORKER.goingTo:
        idleTimer = 0;
        image_speed = walkingImageSpeed;    
        if (state == STATES_WORKER.building || state = STATES_WORKER.upgrading){
            sprite_index = spriteWalkingResources;
        }else{
            sprite_index = spriteWalking;
        }
    break;
    
    //resourceDropOff
    case SUBSTATES_WORKER.resourceDropOff:
        sprite_index = spriteWalkingResources;
        image_speed = walkingImageSpeed; 
        scr_sprite_face_xpoint(dropOffTarget.x);   
    break;
    
    //resourcePosition
    case SUBSTATES_WORKER.resourcePosition:
        resourceDir = scr_unit_dir_x(target.x);
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
}







