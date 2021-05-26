/// @desc Collect Coin

if (instance_exists(oPlayer))
	{
		global.coins++;
		global.coinsthisroom++;
		with (oGame) cointextscale = 2;
	}
instance_destroy();
