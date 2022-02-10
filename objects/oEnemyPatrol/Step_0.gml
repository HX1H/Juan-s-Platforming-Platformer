/// @description Insert description here
// You can write your code in this editor
xVector = xDirection * xSpeed;
yVector = yVector + grv;
if place_meeting(x + xVector, y, oWall)
	{
		turnTimer = 2.5;
		xDirection = -xDirection;
	}
x = x +xVector;

if place_meeting(x, y + yVector, oWall)
	{
	//as long as the next pixel is empty, move there
	//! means "Not"
	while (!place_meeting(x, y + sign(yVector), oWall))	
	{
		//move one pixel
		//if yVector is positive then sign(yVector) = 1
		//if yVector is negative then sign(yVector) = -1
		
		y = y + sign(yVector);
		}
		//make sure XVector won't move us
		yVector = 0;
	}
y = y + yVector;



if (isInvincible)
{
	invTimer -=1/room_speed;
	if(invTimer<0)
	{
	invTimer = .5;
	isInvincible = false;
	}
}

turnTimer -=1/room_speed;
if (turnTimer<0)
{
	turnTimer = 2.5;
	xDirection = -xDirection;
}