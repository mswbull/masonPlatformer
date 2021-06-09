/// @desc Collect Jump Abilty

if (instance_exists(oPlayer))
	{
		audio_play_sound(snCollect,5,false);
		global.jump = 1;
		global.speed = 0;
		global.glide = 0;
	}
instance_destroy();
