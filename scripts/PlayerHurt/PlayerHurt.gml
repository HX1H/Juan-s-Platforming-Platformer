// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerHurt()
{
	//check for no invincibility
if (!oPlayer.isInvincible)
	{
		//start invincibility
		isInvincible = true;
		//set alarm to end Iframes in 2 seconds
		alarm_set(0, 2*room_speed);
		//subtract one health
		oPlayer.hp--;
		
		//check to see if we are still alive
		if (oPlayer.hp <1)
		{
			//if not alive, die
			PlayerDeath();
		}
	}
}

function PlayerDeath(){
	//in hud create global.lives = 3
	//global.lives-=1;
	//if globval.lives >0
room_restart();
}