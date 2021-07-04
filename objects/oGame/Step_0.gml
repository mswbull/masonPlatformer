/// @desc Controller, Game Reset and Skip

if gamepad_is_connected(0) {
	global.gamepad = 0
}

if gamepad_is_connected(1) {
	global.gamepad = 1
}

if keyboard_check_pressed(vk_escape)
{
	SlideTransition(TRANS_MODE.RESTART);
}

if (room == rOne)  || (room == rTwo)  || (room == rThree)|| (room == rFour)
{
	
	if keyboard_check_pressed(ord("N")) || gamepad_button_check_pressed(global.gamepad,gp_select)
	{
		SlideTransition(TRANS_MODE.NEXT);
	}
}
	
if keyboard_check(vk_control) && keyboard_check_pressed(ord("F"))
{
	window_set_fullscreen(!window_get_fullscreen());
}