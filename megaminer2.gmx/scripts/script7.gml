///This Script places and builds a structure!\\\
var structurePlaced = 0;
var structure = argument0;
var cost = argument1;
var player argument2;
var myStruc;

if (player == 1){
    myStruc = instance_create(1488,688,structure);
    scr_gamepad_movement_building(obj_selectorP1,0,1024);
    if (!structurePlaced){
        myStruc.placed = 0;
        myStruc.x = obj_selectorP1.x+8;
        myStruc.y = obj_selectorP1.y+8;    
    }else{
        myStruc.placed = 1;
        structurePlaced = 1;
        global.buildingP1 = 0;
    }
}
