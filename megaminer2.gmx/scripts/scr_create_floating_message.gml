///scr_create_floating_message(x,y,xSpeed,ySpeed,duration,message)

//Creates a floating pop up message that disappears after a specified duration

var xx = argument[0];
var yy = argument[1];
var xSp = argument[2];
var ySp = argument[3];
var dur = argument[4];
var msg = argument[5];

//Create the instance to display the message
with(instance_create(xx, yy, obj_drawMessage)){
    message = argument[5];
    duration = argument[4];
}
