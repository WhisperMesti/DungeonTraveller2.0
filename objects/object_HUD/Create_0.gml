/// @description Insert description here
// You can write your code in this editor

viewW = view_wport[0];
viewH = view_hport[0];
spacingX = viewW*0.01 + 64;

viewEffectW = viewW*0.034;
viewEffectH = viewH*0.052;

viewHeartW_1 = viewW*0.13;
viewHeartW_2 = viewHeartW_1 + spacingX;
viewHeartW_3 = viewHeartW_2 + spacingX;
viewHeartH = viewH*0.05;

statBarWidth = view_wport[0]*0.40;
statBarX = view_wport[0]*0.1;

currentEffect = 0; //"Nothing"

timerMax = 60;
timer = timerMax;
