///scr_mouse_over(object)

arg0 = argument[0];

//Check to see if the mouse is over a given object

if (instance_place(mouse_x, mouse_y, arg0)){
    return 1;
}else{
    return 0;
}
