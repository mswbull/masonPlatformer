/// @desc Collect Heart and Add HP

if (instance_exists(oPlayer))
	{
		audio_play_sound(snCollect,5,false);
		global.hp++;
	}
instance_destroy();
