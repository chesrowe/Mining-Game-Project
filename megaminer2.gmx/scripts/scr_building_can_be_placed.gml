///scr_building_can_be_placed();
//Checks to see if the building executing the code is on flat ground and can be placed

var width = sprite_get_width(sprite_index);
var middleX = (width/2);
//Check to see if there is flat ground at the left corner , middle , and right corer
if (instance_position(x-middleX,y+16,obj_tileSurfaceFlatParent) && instance_position(x+middleX,y+16,obj_tileSurfaceFlatParent) && instance_position(x,y+16,obj_tileSurfaceFlatParent) && !place_meeting(x,y,obj_tileSurfaceHillParent)){
    return 1;    
}else{
    return 0;
}
