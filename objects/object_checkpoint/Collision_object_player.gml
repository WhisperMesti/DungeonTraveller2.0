/// @description Insert description here
// You can write your code in this editor

if (other.checkpoint_x != x or other.checkpoint_y !=y) {
	audio_play_sound(sound_checkpoint,1,0)
	other.checkpoint_x = x;
	other.checkpoint_y = y;
}



