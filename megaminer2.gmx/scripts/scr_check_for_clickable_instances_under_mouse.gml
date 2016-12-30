///scr_check_for_clickable_instances_under_mouse()
//Checks to see if a clickable/selectable instance is at the mouse position

if (!position_meeting(mouse_x, mouse_y,obj_resourceParent) && !position_meeting(mouse_x,mouse_y,obj_treeParent) && !position_meeting(mouse_x,mouse_y,obj_farmingPatch) && !position_meeting(mouse_x,mouse_y,obj_workerParent)){
    return false;    
}else{
    return true;
}


