/// @desc SlideTransition(mode,targetroom)
/// @arg Mode sets transition mode between NEXT, RESTART and GOTO
/// @arg Target sets target room when using GOTO mode

function SlideTransition(argument0, argument1){
	with (oTransition)
	{
		mode = argument[0];
		if(argument_count > 1) target = argument[1];
	}
}