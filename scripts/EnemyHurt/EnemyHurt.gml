// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyHurt()
{
if (!other.isInvincible)
	{
		//start invincibility
		other.isInvincible = true;
		//set alarm to end Iframes in 2 seconds
		//alarm_set(0, 2*room_speed);
		
		//subtract one health
		other.hp--;
		
		//check to see if we are still alive
		if (other.hp <1)
		{
			//if not alive, die
			EnemyDeath();
		}
	}
}

function EnemyDeath()
{
	//create coin drop
	if (random_range(0,10)>4)
	{
		instance_create_layer(other.x-20,other.y-50,"Instances", oCoin);
	}
	instance_destroy(other);
}