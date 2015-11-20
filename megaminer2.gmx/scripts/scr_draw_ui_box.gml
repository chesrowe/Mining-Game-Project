///scr_draw_ui_box(tilesToRight,tilesDown,startX,startY)

var rightTiles = argument[0];
var downTiles = argument[1];
var startX = argument[2];
var startY = argument[3];
var backgroundColor = make_colour_rgb(75,85,88); 

//draw back ground
bottomRightX = startX + 32 + (32 * rightTiles) - 4  ;
bottomRightY = startY + 32 + (32 * downTiles) + 16;
draw_set_colour(backgroundColor);
draw_rectangle(startX+4,startY+4,bottomRightX+32,bottomRightY,0);
draw_set_colour(c_white);

//////Draw ui tiles
//Draw top left corner tile
draw_sprite(spr_uiDynamicboxTopLeft,0,startX,startY);

//draw connecting tiles to the right top corner 
var xx = startX + 32;
repeat(rightTiles){
    draw_sprite(spr_uiDynamicBoxTop,0,xx,startY);
    xx += 32;
}

//Draw right corner tile
draw_sprite(spr_uiDynamicBoxTopRight,0,startX + (32*rightTiles) + 32, startY);

//Draw down left connecting tiles
var yy = startY + 32;
repeat(downTiles){
    draw_sprite(spr_uiDynamicBoxLeft,0,startX,yy);
    yy += 32;    
}

//Draw bottom left ui tile
draw_sprite(spr_uiDynamicBoxBottomLeft,0,startX,startY + (32*downTiles) + 32); 

//Draw right down connecting tiles 
var yyy = startY + 32;
repeat(downTiles){
    draw_sprite(spr_uiDynamicBoxRight,0,startX + 32 + (32*rightTiles) + 16,yyy);
    yyy += 32;
}

//Draw bottom right ui corner tile
draw_sprite(spr_uiDynamicBoxBottomRight,0,startX + 32 + (32*rightTiles),startY + 32 + (32*downTiles));

//Draw bottom connecting tiles
var xxx = startX + 32;
repeat(rightTiles){
    draw_sprite(spr_uiDynamicBoxBottom,0,xxx,startY + 32 + (32*downTiles) + 16);
    xxx += 32;
}

