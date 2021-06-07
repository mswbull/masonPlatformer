/// @desc Collect Speed Abilty

if (instance_exists(oPlayer))
	{
		audio_play_sound(snCollect,5,false);
		global.speed = 1;
		global.jump = 0;
	}
instance_destroy();
