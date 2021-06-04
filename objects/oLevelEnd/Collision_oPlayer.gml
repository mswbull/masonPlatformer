/// @desc Next Room

if (global.crystal == 1){
	with (oPlayer)
	{
		if (hascontrol)
		{
			hascontrol = false;
			SlideTransition(TRANS_MODE.GOTO,other.target);
		}
	}
}