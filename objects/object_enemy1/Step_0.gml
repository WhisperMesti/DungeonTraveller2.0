/// @description Insert description here
// You can write your code in this editor

x += moveSpeed
//image_xscale = direction;

if place_meeting(x + moveSpeed,y, object_barrier) 
{
	moveSpeed *= -1;
	//r = random_range(2,2)
	//if (r == 2) 
	//audio_play_sound_at(sound_enemy1,x,y,0,10,20,1,0,2)
	if (sprite_index == sprite_enemy1_right) sprite_index = sprite_enemy1_left;
	else if (sprite_index == sprite_enemy1_left) sprite_index = sprite_enemy1_right;
}