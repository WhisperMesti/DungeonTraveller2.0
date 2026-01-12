/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, object_platform) or place_meeting(x, y, object_enemy1))
{
	instance_destroy();
}

if (place_meeting(x, y, object_player))
{
	global.playerHealth -= 1;
	audio_play_sound(sound_damage,2,0)
	instance_destroy();
}


