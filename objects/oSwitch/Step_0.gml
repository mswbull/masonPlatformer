/// @desc Switch Trigger

if (place_meeting(x, y, oPlayer)) && (keyboard_check_pressed(ord("E"))) || (gamepad_button_check(global.gamepad,gp_face4)) {
	pressed = true;
	image_index = 1;
}

if (pressed == true && instance_exists(oRock)) {
	oRock.destroyed = true;
}