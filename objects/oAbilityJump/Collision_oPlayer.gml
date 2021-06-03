/// @desc Collect Jump Abilty

if (instance_exists(oPlayer))
	{
		audio_play_sound(snCollect,5,false);
		global.jump = 1;
	}
instance_destroy();
