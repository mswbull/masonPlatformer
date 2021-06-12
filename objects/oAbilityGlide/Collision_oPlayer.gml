/// @desc Collect Glide Abilty

if (instance_exists(oPlayer))
	{
		audio_play_sound(snCollect,5,false);
		global.glide = 1;
		global.jump = 0;
		global.speed = 0;
	}
instance_destroy();
