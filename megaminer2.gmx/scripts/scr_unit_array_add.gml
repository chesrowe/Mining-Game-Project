///scr_unit_array_add()

//add new id to unit array
//var unitId = argument0;

for (i = 0; i < 100; i++;){
    if (global.unitSelected[i] == noone){
        global.unitSelected[i] = id;
        (global.unitSelected[i]).selected = 1;
        exit;
    }
}