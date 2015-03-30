


if (gamepad_axis_value(argument0, gp_axisrh) > .5){
    if (refresh == 0){
        if (x < (view_xview[argument0]+640)){
            x += 32;
            refresh = 1;
        }else{
            x = view_xview + 32;
        }
    }
}
if (gamepad_axis_value(argument0, gp_axisrh) < -.5){
    if (refresh == 0){
        if (x > (view_xview[argument0]+16)){
            x -= 32;
            refresh = 1;
        }else{
            x = view_xview + 616;
        }
    }
}
if (gamepad_axis_value(argument0, gp_axisrv) > .5){
    if (refresh == 0){
        if (y > (view_yview[argument0]+240)){
            y += 32;
            refresh = 1;
        }else{
            y = view_yview + 256;
        }
    }
}
if (gamepad_axis_value(argument0, gp_axisrv) < -.5){
    if (refresh == 0){
        if (y < (view_yview[argument0]+690)){
            y -= 32;
            refresh = 1;
        }else{
            y = view_yview + 684;
        }
    }
}

if (refresh >= 1){
    refresh ++;
    if (refresh >= 8){
        refresh = 0;
    }
}
