/// @desc Progress Text

letters += spd;
text_current = string_copy(text,1,floor(letters));

draw_set_font(fSign);
if (h == 0) h = string_height(text);
w = string_width(text_current);

// Destroy When Done

if (letters >= length) && (keyboard_check_pressed(vk_anykey)) || (gamepad_button_check(0,gp_face1)) || (gamepad_button_check(0,gp_face4))
{
	instance_destroy();
	with (oCamera) follow = oPlayer;
}