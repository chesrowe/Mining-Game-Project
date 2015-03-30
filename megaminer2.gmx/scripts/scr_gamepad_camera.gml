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
background_x[0] = (view_xview[0]/1.1);
background_x[1] = (view_xview[0]/1.5);
background_x[2] = (view_xview[0]/2.2);
