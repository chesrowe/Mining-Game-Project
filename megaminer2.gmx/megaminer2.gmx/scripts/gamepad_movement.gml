


if (gamepad_axis_value(argument0, gp_axisrh) > .5){
    if (refresh == 0){
        x += 32;
        refresh = 1;
    }
}
if (gamepad_axis_value(argument0, gp_axisrh) < -.5){
    if (refresh == 0){
        x -= 32;
        refresh = 1;
    }
}
if (gamepad_axis_value(argument0, gp_axisrv) > .5){
    if (refresh == 0){
        y += 32;
        refresh = 1;
    }
}
if (gamepad_axis_value(argument0, gp_axisrv) < -.5){
    if (refresh == 0){
        y -= 32;
        refresh = 1;
    }
}

if (refresh >= 1){
    refresh ++;
    if (refresh >= 5){
        refresh = 0;
    }
}
