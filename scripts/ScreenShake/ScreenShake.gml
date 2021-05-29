/// @desc ScreenShake(magnitude, frame)
/// @arg Magniude sets the strength of the shake (radius in pixels)
/// @arg Frames sets the length of the shake in the frames (60 = 1 at 60fps)

function ScreenShake(argument0, argument1) {
	with (oCamera)
	{
		if (argument0 > shake_remain)
		{
			shake_magnitude = argument0;	
			shake_remain = argument0;
			shake_length = argument1;
		}
	}
}