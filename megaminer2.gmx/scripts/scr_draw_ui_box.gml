///scr_draw_ui_box(tilesToRight,tilesDown,startX,startY)

var rightTiles = argument[0];
var downTiles = argument[1];
var startX = argument[2];
var startY = argument[3];
var backgroundColor = make_colour_rgb(75,85,88); 

//draw back ground
bottomRightX = startX + 64 + (32 * rightTiles) + 28;
bottomRightY = startY + 64 + (32 * downTiles) + 48;
draw_set_colour(backgroundColor);
draw_rectangle(startX+4,startY+4,bottomRightX+32,bottomRightY,0);
draw_set_colour(c_white);

//////Draw ui tiles
//Draw top left corner tile
draw_sprite(spr_uiDynamicboxTopLeft,0,startX,startY);

//draw connecting tiles to the right top corner 
var xx = startX + 64;
repeat(rightTiles){
    draw_sprite(spr_uiDynamicBoxTop,0,xx,startY);
    xx += 32;
}

//Draw right corner tile
draw_sprite(spr_uiDynamicBoxTopRight,0,startX + (32*rightTiles) + 64, startY);

//Draw down left connecting tiles
var yy = startY + 64;
repeat(downTiles){
    draw_sprite(spr_uiDynamicBoxLeft,0,startX,yy);
    yy += 32;    
}

//Draw bottom left ui tile
draw_sprite(spr_uiDynamicBoxBottomLeft,0,startX,startY + (32*downTiles) + 64); 

//Draw right down connecting tiles 
var yyy = startY + 64;
repeat(downTiles){
    draw_sprite(spr_uiDynamicBoxRight,0,startX + 64 + (32*rightTiles) + 48,yyy);
    yyy += 32;
}

//Draw bottom right ui corner tile
draw_sprite(spr_uiDynamicBoxBottomRight,0,startX + 64 + (32*rightTiles),startY + 64 + (32*downTiles));

//Draw bottom connecting tiles
var xxx = startX + 64;
repeat(rightTiles){
    draw_sprite(spr_uiDynamicBoxBottom,0,xxx,startY + 64 + (32*downTiles) + 47);
    xxx += 32;
}

