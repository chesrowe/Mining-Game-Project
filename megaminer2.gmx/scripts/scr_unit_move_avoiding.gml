///scr_unit_move_avoiding(speed,run,direction)
//Walk right avoiding hills
var moveSpeed = argument[0]; //Speed that the object moves at
var yMoveSpeed = moveSpeed;
var runOn = argument[1]; // Whether the object is "running" or not (doubles speed)
var dir = argument[2]; // 1 = right, -1 = left
if (dir == -1){
    var moveSpeed = moveSpeed * -1;
    scr_sprite_face_left();
}else{
    scr_sprite_face_right();    
}
if (runOn && scr_worker_resource_slot_is_empty()){
    moveSpeed *= 2;
}

if (place_meeting(x + moveSpeed, y, obj_tileSurfaceHillParent)){
    for (i = 0; i <= 100; i++){
        if (!place_meeting(x + moveSpeed, y - i, obj_tileSurfaceHillParent)){
            y -= (i - 2);
            break;
        }    
    }
       
}

x += moveSpeed; 












