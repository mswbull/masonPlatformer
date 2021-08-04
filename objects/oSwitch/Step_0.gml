/// @desc Switch Trigger

if (place_meeting(x, y, oPlayer)) && (keyboard_check_pressed(ord("E"))) || (gamepad_button_check(global.gamepad,gp_face4)) {
	pressed = true;
}

if (pressed == true && door != undefined && instance_exists(oDoorSide)) {
	door.open = true;
	image_index = 1;
}