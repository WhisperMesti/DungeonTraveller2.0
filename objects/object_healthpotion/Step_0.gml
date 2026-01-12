/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, object_player))
{
	instance_destroy();
	global.playerHealth += 2;
	audio_play_sound(sound_potion,1,0)
}

levitate = clamp(levitate,levitateMin,levitateMax)
if (levitate < levitateMax and isUp) {
	levitate += 0.1;
	y += 0.1;
} else isUp = false;
if (levitate > levitateMin and not isUp) {
	levitate -= 0.1;
	y -= 0.1;
} else isUp = true;