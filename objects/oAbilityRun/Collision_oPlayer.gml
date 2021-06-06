/// @desc Collect Run Abilty

if (instance_exists(oPlayer))
	{
		audio_play_sound(snCollect,5,false);
		global.run = 1;
	}
instance_destroy();
