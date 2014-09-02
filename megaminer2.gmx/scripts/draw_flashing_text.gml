///draw_flashing_text(x,y,speed,string)

xx = argument0;
yy = argument1;
flashSp = argument2;
str = argument3;

if (alpha >= 1 && countUp){
    countUp = 0;
    countDown = 1;
}
if (alpha <= .8 && countDown){
    countUp = 1;
    countDown = 0;
}
if (countUp){
    alpha += flashSp;
}else{
    alpha -= flashSp;
}

draw_text_ext_color(xx,yy,string(str),0,999999,c_white,c_white,c_white,c_white,alpha);
