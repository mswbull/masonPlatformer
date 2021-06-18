/// @desc Skip to Room Three

with (oPlayer)
{
	if (hascontrol)
	{
		skip = rThree;
		hascontrol = false;
		SlideTransition(TRANS_MODE.GOTO,skip);
	}
}