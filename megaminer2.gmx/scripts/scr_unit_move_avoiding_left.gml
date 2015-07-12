x -= walkSpeed;
//Make the worker go up or down a hill
if ( (place_meeting(x,y,obj_tileSurfaceHillDown) || place_meeting(x,y,obj_tileSurfaceHillDownUnder) ) && !position_meeting(x-4,y+24,obj_tileSurfaceFlatParent) ){
    y -= walkSpeedHill+.3;
    leveled = 0;
}else if (place_meeting(x,y,obj_tileSurfaceHillUp) && !position_meeting(x-4,y+24,obj_tileSurfaceFlatParent)){
    y += walkSpeedHill+.2;
}