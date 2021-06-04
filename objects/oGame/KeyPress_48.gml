/// @desc Skip to Training Room

with (oPlayer)
{
	if (hascontrol)
	{
		skip = rTraining;
		hascontrol = false;
		SlideTransition(TRANS_MODE.GOTO,skip);
	}
}