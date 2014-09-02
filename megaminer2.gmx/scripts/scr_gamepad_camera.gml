//Controls the movement of the camera
///scr_gamepad_camera(device);


if (gamepad_axis_value(argument0, gp_axislh) > .5){
        if(x < 9660){
             x += 8;
        }
}
if (gamepad_axis_value(argument0, gp_axislh) < -.5){
        if(x > 320){
             x -= 8;
        }
        
}

