///scr_unit_move_avoiding(speed,run,direction)
//Walk right avoiding hills
var moveSpeed = argument[0]; //Speed that the object moves at
var yMoveSpeed = moveSpeed;
var runOn = argument[1]; // Whether the object is "running" or not (doubles speed)
var dir = argument[2]; // 1 - right, 0 - left
if (dir == 0){
    var moveSpeed = moveSpeed*-1;
}

if (!runOn){
    x += moveSpeed;
}else{
    x += moveSpeed*2;    
}
//Make the worker go up or down a hill
//Right
if (dir == 1){
    if ( (position_meeting(x+16,y+10,obj_tileSurfaceHillUp) || position_meeting(x+16,y+26,obj_tileSurfaceHillUpUnder)) || position_meeting(x-16,y+26,obj_tileSurfaceFlatParent) || position_meeting(x,y+30,obj_tileSurfaceHillParent) ){
        if (!runOn){
            y -= yMoveSpeed+.3;
        }else{
            y -= (yMoveSpeed+.3)*2;    
        }
    }else if ( (position_meeting(x+16,y+26,obj_tileSurfaceHillDown) || position_meeting(x,y+30,obj_tileSurfaceHillDownUnder) || position_meeting(x,y+30,obj_tileSurfaceHillDown) || place_meeting(x,y+4,obj_tileSurfaceHillDown))){
        if (!runOn){
            y += yMoveSpeed+.2;
        }else{
            y += (yMoveSpeed+.2)*2;   
        }
    }
}else{
    //Left and up
    if ( (position_meeting(x-16,y+10,obj_tileSurfaceHillDown) || position_meeting(x-16,y+26,obj_tileSurfaceHillDownUnder) || position_meeting(x+16,y+26,obj_tileSurfaceFlatParent) || (position_meeting(x,y+30,obj_tileSurfaceHillParent) && !position_meeting(x+6,y+30,obj_tileSurfaceFlatParent)) ) ){
        if (!runOn){
            y -= yMoveSpeed+.3;
        }else{
            y -= (yMoveSpeed+.3)*2;    
        }
        //left and DOWN
    }else if ( (position_meeting(x+24,y+26,obj_tileSurfaceHillUp) || position_meeting(x,y+30,obj_tileSurfaceHillUpUnder) || place_meeting(x+10,y,obj_tileSurfaceHillUp)) && (!position_meeting(x-16,y+26,obj_tileSurfaceFlatParent)) ){
        if (!runOn){
            y += yMoveSpeed+.2;
        }else{
            y += (yMoveSpeed+.2)*2;   
        }
    }    
}
