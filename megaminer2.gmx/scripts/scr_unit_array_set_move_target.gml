///scr_unit_array_set_move_target(randomness);
//Sets all selected units to move toward the current mouse position 

randomize();
unitMoveX = mouse_x + round(((global.selectedNumber/2))*32+irandom(argument0))

for(i = 0;i < 100;i++;){
    if (global.unitSelected[i] != noone){
        randomize();
        (global.unitSelected[i]).moveTargetX = unitMoveX;
        (global.unitSelected[i]).moveTargetY = (global.unitSelected[i]).y;
        (global.unitSelected[i]).state = 'moveToTarget';
        (global.unitSelected[i]).moveToTime = (2 + irandom(15));
        (global.unitSelected[i]).moveToTimer = 0;
        unitMoveX -= 32 + (choose(-irandom(irandom(argument0)),irandom(argument0)));
    }else{
        break;
    }
}
