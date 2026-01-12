/// @description Insert description here
// You can write your code in this editor

//Calling
scr_Controls();

//Moving
x += xSpd; y+=ySpd;

//Direction
xSpd = (keyRight - keyLeft) * moveSpeed;

// Gravity
ySpd += grav;

// Jump
if (canJump > 0) && (keyJump) {
	ySpd += jumpSpeed;
	canJump = 0;
}

//Animation
if (xSpd > 0) sprite_index = sprite_player_right;
else if (xSpd < 0) sprite_index = sprite_player_left;
else {
	if (sprite_index == sprite_player_right) sprite_index = sprite_player_stand_right;
	else if (sprite_index == sprite_player_left) sprite_index = sprite_player_stand_left;
}


//Horizontal Collision
if place_meeting(x + xSpd, y, object_platform)
{
	while (abs(xSpd) > 0.1) {
		xSpd *= 0.5; //slow down a player 
		if (!place_meeting(x+xSpd, y, object_platform)) { //move it until it reaches the object
			x += xSpd;
		}
	}
	xSpd = 0;
}


//Vertical Collision
if place_meeting(x, y+ySpd, object_platform)
{
	if (ySpd > 0) canJump = 1;
	while (abs(ySpd) > 0.1) 
	{
		ySpd *= 0.5; //slow down a player 
		if (!place_meeting(x, y+ySpd, object_platform)) { //move it until it reaches the object
			y += ySpd;
		}
	}
	ySpd = 0;
}

//Death function
if (global.playerHealth == 0 and room != Level3)  {
	audio_play_sound(sound_death,1,0)
	time = 0;
	x = checkpoint_x;
	y = checkpoint_y - 10;
	global.playerHealth = global.playerHealthMax;
} else if (global.playerHealth == 0 and room == Level3 and not deathLevel3) {
	audio_play_sound(sound_death,1,0)
	time = 60;
	moveSpeed = 0;
	jumpSpeed = 0;
	deathLevel3 = true;
}

if (deathLevel3 and time == 0) {
	room_restart();
}


//timer
if (time > 0) time--;

//Checking if touches for blocks
function stickTo(xobject,xall) {
	if xall return (place_meeting(x, y+0.5-ySpd, xobject) or place_meeting(x, y-0.5+ySpd, xobject) or place_meeting(x+xSpd+0.2, y, xobject) or place_meeting(x+xSpd-0.2, y, xobject));
	else return (place_meeting(x, y+0.5-ySpd, xobject))
}


//EnemyTouch
if ((place_meeting(x, y, object_enemy1) or place_meeting(x, y, object_enemy2)) and not enemy_collide)
{
	global.playerHealth -= 2;
	audio_play_sound(sound_damage,2,0)
	enemy_collide = true;
} else if !(place_meeting(x, y, object_enemy1) or place_meeting(x, y, object_enemy2)) enemy_collide = false;

//Bullet
if (place_meeting(x, y, object_ball) and not bullet_collide)
{
	bullet_collide = true;
} else if !(place_meeting(x, y, object_ball)) bullet_collide = false;

//Red Block
if (stickTo(object_redblock,true) and not redblock_collide) {
	global.playerHealth -= 3;
	audio_play_sound(sound_damage,2,0)
	redblock_collide = true;
} else if !(stickTo(object_redblock,true)) redblock_collide = false;


//Blue Block
if stickTo(object_blueblock,false) 
{
	moveSpeed = 10;
	time = 30;
	if (not global.effect_speed) audio_play_sound(sound_effect,1,0)
	global.effect_speed = true;
}
else 
{
	if (time == 0) {
		moveSpeed = basemoveSpeed;
		global.effect_speed = false
	}
}

//Green Block
if stickTo(object_greenblock,false) {
	jumpSpeed = -10;
	time = 50;
	if (not global.effect_jumpboost) audio_play_sound(sound_effect,1,0)
	global.effect_jumpboost = true;
}
else 
{
    if (time == 0) {
		jumpSpeed = basejumpSpeed;
		global.effect_jumpboost = false;
	}
}

//Yellow Block
if stickTo(object_yellowblock,false) {
	ySpd -= 5;
	canJump = 0;
	time = 20;
	if (not global.effect_jumppad) audio_play_sound(sound_effect,1,0)
	global.effect_jumppad = true;
	
}
else
{
	if (time == 0) {
		grav=basegrav;
		global.effect_jumppad = false;
	}
}

//Lava
if (stickTo(object_lava,true)) {
	global.playerHealth = 0;
} 

//Health
if keyboard_check_pressed(vk_backspace){
    global.playerHealth -= 1;
}

if keyboard_check_pressed(vk_enter){
    global.playerHealth += 1;
}

global.playerHealth = clamp(global.playerHealth,0,global.playerHealthMax)

//End game
if (global.endGame) {
	moveSpeed = 0;
	jumpSpeed = 0;
}
	


