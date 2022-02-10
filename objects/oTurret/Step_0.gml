/// @description Insert description here
// You can write your code in this editor
if (isInvincible)
{
	invTimer -=1/room_speed;
	if(invTimer<0)
	{
	invTimer = .5;
	isInvincible = false;
	}
}

shootTimer -=1/room_speed;
if(shootTimer<0)
{
	shootTimer = 3;
	var bullet= instance_create_layer(x,y, "Instances",oEnemyProjectile)
	with(bullet)
	{
		//how many pixels per frame to move
		speed = 6;
		direction = point_direction(x, y, oPlayer.x, oPlayer.y);
	}
}