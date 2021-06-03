/// @desc Collect Glider

if (instance_exists(oPlayer))
	{
		audio_play_sound(snCollect,5,false);
		global.glider = 1;
	}
instance_destroy();

