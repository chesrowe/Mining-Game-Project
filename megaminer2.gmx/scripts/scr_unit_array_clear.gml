
///scr_unit_arry_clear();

for (i = 0;i < 20;i++){
    if ((global.unitSelected[i]) != noone){
        (global.unitSelected[i]).selected = 0;
    }
    global.unitSelected[i] = noone;
    global.selectedNumber = 0;
}
