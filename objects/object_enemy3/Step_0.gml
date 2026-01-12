/// @description Insert description here
// You can write your code in this editor

if (timer > 0 and not global.endGame) timer -= 1/ room_speed;
else x += moveSpeed;

if(global.endGame and x < 8950) {
	if (x<8000) x = 8000;
	timer = 200;
}
else if (global.endGame) {
	moveSpeed = 0;
	timer--;
	if (timer < 0) {
		global.endGame = false;
		room_goto_next();
	}
}
