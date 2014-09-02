
///scr_miner_rock_select(playerVarSelct,playerVarRock) 
// --> global.minerSelectP1 or global.minerSelectRockP1 <--
var minerSelectPlayer = argument0;
var rockSelectPlayer = argument1;

if (minerSelectPlayer == 1){
    if (global.minerSelectRockP1 == 0){
        x = 1488;
        y = 688;
        obj_cameraConP1.x = 1400;
    }else if (global.minerSelectRockP1 == 1){
        x = 4365;
        y = 688;
        obj_cameraConP1.x = 4250;
    }
}

if (gamepad_axis_value(0, gp_axisrh) > .5 && rockSelectPlayer == 0 && minerSelectPlayer){
    rockSelectPlayer = 1;
}
if (gamepad_axis_value(0, gp_axisrh) < -.5 && rockSelectPlayer == 1 && minerSelectPlayer){
    rockSelectPlayer = 0;
}

