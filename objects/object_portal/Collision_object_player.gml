/// @description Insert description here
// You can write your code in this editor

function activatePortal() {
	if (not visible) {
	audio_play_sound(sound_nextlevel,1,0)
	visible = true;
	activated = true;
	}
	if (activated and timer >0) timer -=1;
	else if (activated and timer == 0) room_goto_next()
}
if (room == Level1) activatePortal();
else if (room == Level2) {if (global.coins == global.coinsMax) activatePortal();}
else if (room == Level3) global.endGame = true;


other.checkpoint_x = x;
other.checkpoint_y = y;