/// @desc Collect Crystal

if (instance_exists(oPlayer))
	{
		global.crystal = 1;
		audio_sound_pitch(snCoin,choose(0.8,1.0,1.2));
		audio_play_sound(snCoin,5,false);
	}
instance_destroy();
