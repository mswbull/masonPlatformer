/// @desc Player and Text Progression

// Progress Text

letters += spd;
text = string_copy(endtext[currentline],1,floor(letters));

// Next Line

if (letters >= length) && (keyboard_check_pressed(vk_anykey)) || (gamepad_button_check_pressed(global.gamepad,gp_start)) || (gamepad_button_check_pressed(global.gamepad,gp_face1))
{
	if (currentline+1 == array_length_1d(endtext))
	{
		SlideTransition(TRANS_MODE.RESTART);
	}
	else
	{
		currentline++;
		letters = 0;
		length = string_length(endtext[currentline]);
	}
}