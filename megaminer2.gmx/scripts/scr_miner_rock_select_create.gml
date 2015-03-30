
///scr_miner_rock_select(player,selectorX1,selectorY1,selectorX2,selectorY2,camX1,camX2,minerCost,minerType);
// --> global.minerSelectP1 or global.minerSelectRockP1 <--
var player = argument0;
var minerCost = argument7;
var minerType = argument8;
var miner = 0;

timer ++;


if (player == 1){
    if (global.selectRockP1 == 0 && !global.rockSelectedP1){
        obj_selectorP1.x = argument1;
        obj_selectorP1.y = argument2;
        obj_cameraConP1.x = argument5;
    }else if (global.selectRockP1 == 1 && !global.rockSelectedP1){
            obj_selectorP1.x = argument3;
            obj_selectorP1.y = argument4;
            obj_cameraConP1.x = argument6;
    }
    
    
    if (gamepad_axis_value(0, gp_axisrh) > .5 && global.selectRockP1 == 0 && global.minerSelectP1 == 1 && global.rockSelectedP1 == 0){
        global.selectRockP1 = 1;
    }
    if (gamepad_axis_value(0, gp_axisrh) < -.5 && global.selectRockP1 == 1 && global.minerSelectP1 && !global.rockSelectedP1){
        global.selectRockP1 = 0;
    }
    
    if (gamepad_button_check_pressed(0, gp_face2)){
        if (global.minerSelectP1){
            global.minerSelectP1 = 0;
            global.goldP1 += minerCost;
        }
    }
    
    if (gamepad_button_check_released(0,gp_face1)){ 
        if (!global.rockSelectedP1){
            if (timer >= 15){
                global.rockSelectedP1 = 1;
            }
        }
    }
    if (global.rockSelectedP1){
        switch(global.selectRockP1){
                case 0: miner = scr_make_miner_create(minerType,3000,692) global.minerSelectP1 = 0 global.goldP1 -= minerCost global.rockSelectedP1 = 0;
                    global.popP1 += 1;
                    timer = 0;
                    with(miner){
                        gold = 1;
                        stone = 0;
                    } 
                break;
                case 1: miner = scr_make_miner_create(minerType,3000,692) global.minerSelectP1 = 0 global.goldP1 -= minerCost global.rockSelectedP1 = 0;
                    global.popP1 += 1;
                    timer = 0;
                    with(miner){
                        stone = 1;
                        gold = 0;
                        
                    }  
                break;
        }
    }
}else{
    if (global.selectRockP2 == 0 && !global.rockSelectedP2){
        obj_selectorP2.x = argument1;
        obj_selectorP2.y = argument2;
        obj_cameraConP2.x = argument5;
    }else if (global.selectRockP2 == 1 && !global.rockSelectedP2){
            obj_selectorP2.x = argument3;
            obj_selectorP2.y = argument4;
            obj_cameraConP2.x = argument6;
    }
    
    
    if (gamepad_axis_value(1, gp_axisrh) > .5 && global.selectRockP2 == 0 && global.minerSelectP2 == 1 && global.rockSelectedP2 == 0){
        global.selectRockP2 = 1;
    }
    if (gamepad_axis_value(1, gp_axisrh) < -.5 && global.selectRockP2 == 1 && global.minerSelectP2 && !global.rockSelectedP2){
        global.selectRockP2 = 0;
    }
    
    if (gamepad_button_check_pressed(1, gp_face2)){
        if (global.minerSelectP2){
            global.minerSelectP2 = 0;
            global.goldP2 += minerCost;
        }
    }
    
    if (gamepad_button_check_released(1,gp_face1)){ 
        if (!global.rockSelectedP2){
            if (timer >= 15){
                global.rockSelectedP2 = 1;
            }
        }
    }
    if (global.rockSelectedP2){
        switch(global.selectRockP2){
                case 0: miner = scr_make_miner_create(minerType,6171,697) global.minerSelectP2 = 0 global.goldP2 -= minerCost;
                    with(miner){
                        gold = 1;
                        stone = 0;
                    } 
                break;
                case 1: miner = scr_make_miner_create(minerType,6171,697) global.minerSelectP2 = 0 global.goldP2 -= minerCost;
                    global.minerSelectP2 = 0;
                    with(miner){
                        stone = 1;
                        gold = 0;
                        
                    }  
                break;
        }
    }   
}

