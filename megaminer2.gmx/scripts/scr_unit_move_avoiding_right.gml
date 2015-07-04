x += walkSpeed;
//Make the worker go up or down a hill
if ( (place_meeting(x,y,obj_tileSurfaceHillUp) || place_meeting(x,y,obj_tileSurfaceHillUpUnder) ) && !position_meeting(x+4,y+24,obj_tileSurfaceFlatParent) ){
    y -= walkSpeedHill+.3;
}else if (place_meeting(x,y,obj_tileSurfaceHillDown) && !position_meeting(x-4,y+24,obj_tileSurfaceFlatParent)){
    y += walkSpeedHill+.2;
}