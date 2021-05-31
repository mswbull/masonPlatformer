/// @desc Skip to Room One

with (oPlayer)
{
	if (hascontrol)
	{
		skip = rOne;
		hascontrol = false;
		SlideTransition(TRANS_MODE.GOTO,skip);
	}
}