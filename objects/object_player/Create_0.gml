/// @description Insert description here
// You can write your code in this editor


basemoveSpeed = 5.5;
basejumpSpeed = -6;
moveSpeed = basemoveSpeed;
jumpSpeed = basejumpSpeed;
xSpd = 0;
ySpd = 0;
canJump = 0;
basegrav = 0.2;
grav = basegrav;

checkpoint_x = x;
checkpoint_y = y; 

time = 0;

deathLevel3 = false;

global.playerHealthMax = 6;
global.playerHealth = global.playerHealthMax;

enemy_collide = false;
bullet_collide = false;
redblock_collide = false; 

//special effects
global.effect_speed = false;
global.effect_jumpboost= false;
global.effect_jumppad = false;

//coins
global.coins = 0;
global.coinsMax = 20;

global.endGame = false;