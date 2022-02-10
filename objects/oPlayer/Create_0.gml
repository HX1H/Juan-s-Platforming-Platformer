/// @description Define variables for player
// You can write your code in this editor

//global variables
global.coins = 0;
global.points = 0;
hp = 5;
isInvincible = false;
//xSpeed is how many pixels the player will move each frame
xSpeed = 4;

//What direction the player is moving. 1 = to the right, -1 = to the left, 0 = not moving
xDirection = 0;

//multly speed * direction
xVector = xSpeed * xDirection;

//gravity
grv = .45;
jumpForce = -11;

yVector = 0;



