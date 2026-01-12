/// @description Insert description here
// You can write your code in this editor

draw_set_font(font_1)

//hearts
if (room != Level4) {
if (global.playerHealth == 6) draw_sprite(sprite_heart_full,0,viewHeartW_3,viewHeartH);
if (global.playerHealth >= 4) draw_sprite(sprite_heart_full,0,viewHeartW_2,viewHeartH);
if (global.playerHealth >= 2) draw_sprite(sprite_heart_full,0,viewHeartW_1,viewHeartH);

if (global.playerHealth == 5) draw_sprite(sprite_heart_half,0,viewHeartW_3,viewHeartH);
if (global.playerHealth == 3) draw_sprite(sprite_heart_half,0,viewHeartW_2,viewHeartH);
if (global.playerHealth == 1) draw_sprite(sprite_heart_half,0,viewHeartW_1,viewHeartH);

if (global.playerHealth <= 4) draw_sprite(sprite_heart_empty,0,viewHeartW_3,viewHeartH);
if (global.playerHealth <= 2) draw_sprite(sprite_heart_empty,0,viewHeartW_2,viewHeartH);
if (global.playerHealth <= 0) draw_sprite(sprite_heart_empty,0,viewHeartW_1,viewHeartH);

//special effect
draw_sprite(sprite_circle,0,viewW*0.01,viewH*0.01);

if (currentEffect == 1) draw_sprite(sprite_effect_speed,0,viewEffectW,viewEffectH);
else if (currentEffect == 2) draw_sprite(sprite_effect_jumpboost,0,viewEffectW,viewEffectH);
else if (currentEffect == 3)draw_sprite(sprite_effect_jumppad,0,viewEffectW,viewEffectH);
}
//collectables
if (room = Level2) {
	draw_sprite_stretched(sprite_coin,0,viewW*0.92,viewH*0.85,128,128);
	draw_text_color(viewW*0.873,viewH*0.925, string_concat(string(global.coins)," / ",string(global.coinsMax)),c_white,c_white,c_white,c_white,1)
}
//Endgame
if (room == Level4) draw_text_color(viewW*0.5,viewH*0.5, "You escaped...",c_white,c_white,c_white,c_white,1)