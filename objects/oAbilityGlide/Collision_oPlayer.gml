/// @desc Collect GLide Abilty

if (instance_exists(oPlayer))
	{
		audio_play_sound(snCollect,5,false);
		global.glide = 1;
	}
instance_destroy();
