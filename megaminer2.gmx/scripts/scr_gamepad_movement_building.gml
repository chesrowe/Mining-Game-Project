///scr_gamepad_movement_building(selectorObj,selectorY,view,device);
var selector = argument0;


if (gamepad_axis_value(argument3, gp_axisrh) > .5){
    if (refresh_ == 0){
        if (selector.x < (view_xview[argument2]+640)){
            selector.x += 32;
            refresh_ = 1;
        }else{
            selector.x = view_xview + 32;
        }
    }
}
if (gamepad_axis_value(argument3, gp_axisrh) < -.5){
    if (refresh_ == 0){
        if (selector.x > (view_xview[argument2]+16)){
            selector.x -= 32;
            refresh_ = 1;
        }else{
            selector.x = view_xview + 616;
        }
    }
}
selector.y = argument1;




if (refresh_ >= 1){
    refresh_ ++;
    if (refresh_ >= 10){
        refresh_ = 0;
    }
}