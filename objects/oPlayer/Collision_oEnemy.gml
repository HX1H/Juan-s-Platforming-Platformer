/// @description Insert description here
// You can write your code in this editor


if (y<= other.y -other.sprite_height*.9)
	{
		//If we hit it on the head, it dead
		global.points +=100
		instance_destroy(other);
	}
	else
	{
	//Reverse uno, we die instead
	PlayerDeath();
	}


