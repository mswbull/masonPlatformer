/// @desc Skip to Room Two

with (oPlayer)
{
	if (hascontrol)
	{
		skip = rTwo;
		hascontrol = false;
		SlideTransition(TRANS_MODE.GOTO,skip);
	}
}