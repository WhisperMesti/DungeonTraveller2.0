/// @description Insert description here
// You can write your code in this editor

if (global.endGame and not playedEnd) {
	audio_stop_all();
	audio_play_sound(sound_level1,1,0);
	playedEnd = true;
}
