/// @desc Collect Coin

if (instance_exists(oPlayer))
	{
		global.coins++;
		global.coinsthisroom++;
		with (oGame) cointextscale = 2;
		audio_sound_pitch(snCoin,choose(0.8,1.0,1.2));
		audio_play_sound(snCoin,5,false);
	}
instance_destroy();
