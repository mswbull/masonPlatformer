/// @desc Controls

if keyboard_check_pressed(vk_anykey) || gamepad_button_check_pressed(global.gamepad,gp_start) || gamepad_button_check_pressed(global.gamepad,gp_face1)
{
	SlideTransition(TRANS_MODE.RESTART);
}