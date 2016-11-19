///scr_instance_under_mouse(obj)
//Checks for a given instance at the position of the mouse

var obj = argument[0];

if (position_meeting(mouse_x, mouse_y, obj)){
    return true;
}else{
    return false;   
}
