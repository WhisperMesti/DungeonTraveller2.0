/// @description Insert description here
// You can write your code in this editor

playedEnd = false;

switch (room) {
	case Level1:
		audio_stop_all();
		audio_play_sound(sound_level2,1,1);
		break;
	case Level2:
		audio_stop_all();
		audio_play_sound(sound_level2,1,1);
		break;
	case Level3: 
		audio_stop_all();
		audio_play_sound(sound_level3,1,0);
		break;
	case Level4:
		audio_play_sound(sound_level3_end,1,0);
		break;
}
