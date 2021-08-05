/// @description dyliquid_set_wave(wave)
/// @param wave
function dyliquid_set_wave(argument0) {

	/*
	Sets the auto-wave magnitude.
	*/

	dy_wave = clamp(argument0, 0, 0.1);
}