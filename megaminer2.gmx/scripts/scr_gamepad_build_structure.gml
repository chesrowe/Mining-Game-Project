///This Script places and builds a structure!\\\
//scr_build_structure(structure,cost,player);
var structure = argument0;
var cost = argument1;
var player = argument2;
refresh__ ++;

if (player == 1){
    if (global.goldP1 >= cost){
        if (gamepad_button_check_released(0,gp_face2)){
            global.buildingDefenceP1 = 0;
            global.defenceMenuP1 = 0;
            global.buildingP1 = 0;
            global.goldP1 += cost;   
            refresh__ = 0;
            structurePlaced = 0;
            created = 0;
            if (instance_exists(myStruc)){
                with(myStruc){
                    instance_destroy();
                    
                }
            } 
            
        }
        if (refresh__ >= 5){
            if (!created){
                myStruc = instance_create(obj_selectorP1.x,obj_selectorP1.y,structure);
                global.goldP1 -= cost; 
                created = 1;
            }
            scr_gamepad_movement_building(obj_selectorP1,660,0,0);
            if (!structurePlaced){
                myStruc.placed = 0;
                myStruc.x = obj_selectorP1.x+8;
                myStruc.y = obj_selectorP1.y+8;    
            }else{
                myStruc.placed = 1;
                global.buildingP1 = 0;
                global.buildingDefenceP1 = 0;
            }
            if (gamepad_button_check_released(0,gp_face1)){
                if (!structurePlaced && global.goldP1 >= cost){
                    structurePlaced = 1;
                    myStruc.placed = 1;
                    created = 0;
                    structurePlaced = 0;
                    refresh__ = 0;
                    global.buildingP1 = 0;
                    global.buildingDefenceP1 = 0;  
                }
             }   
        }
        
    
    }else{
        created = 0;
        structurePlaced = 0;
        refresh__ = 0;
        global.buildingP1 = 0;
        global.buildingDefenceP1 = 0;
    }
}