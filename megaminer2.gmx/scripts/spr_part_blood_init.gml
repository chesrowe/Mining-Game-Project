
///spr_part_bood_init
//creates the particle to be used as blood

global.partEnemyBlood = part_system_create();
global.partBloodRed = part_type_create();
global.partBloodGreen = part_type_create();
//Sets up the look of the red blood particle
part_type_color2(global.partBloodRed,c_red,c_maroon);
part_type_direction(global.partBloodRed,0,360,0,0);
part_type_scale(global.partBloodRed,.5,.5);
part_type_speed(global.partBloodRed,1,2,0,0);
part_type_shape(global.partBloodRed,pt_shape_pixel);
part_type_gravity(global.partBloodRed,.2,270);

