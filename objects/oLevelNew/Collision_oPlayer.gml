/// @desc New Game

if (global.crystal == 1){
	with (oPlayer)
	{
		if (hascontrol)
		{
			hascontrol = false;
			SlideTransition(TRANS_MODE.NEXT);
		}
	}
}