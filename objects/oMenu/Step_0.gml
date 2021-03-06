/// @desc Menu Control

menu_x += (menu_x_target - menu_x) / menu_speed;

if (menu_control)
{
	if (keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(global.gamepad,gp_padu))
	{
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
		audio_play_sound(snMenu,5,false);
	}
	if (keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(global.gamepad,gp_padd))
	{
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items-1;
		audio_play_sound(snMenu,5,false);
	}
	if (keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(global.gamepad,gp_start) || gamepad_button_check_pressed(global.gamepad,gp_face1))
	{
		menu_x_target = gui_width+300;
		menu_committed = menu_cursor;
		ScreenShake(4,30);
		menu_control = false;
		audio_play_sound(snMenu,5,false);
	}
}

if (menu_x > gui_width+150) && (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 5: SlideTransition(TRANS_MODE.NEXT); break;
		case 4:
		{
			if (!file_exists(SAVEFILE))
			{
				SlideTransition(TRANS_MODE.NEXT);	
			}
			else
			{
				var file = file_text_open_read(SAVEFILE);
				var target = file_text_read_real(file);
				global.kills = file_text_read_real(file);
				global.hasgun = file_text_read_real(file);
				global.coins = file_text_read_real(file);
				file_text_close(file);
				SlideTransition(TRANS_MODE.GOTO,target);
			}
		}
		break;
		case 3: SlideTransition(TRANS_MODE.TUTORIAL); break;
		case 2: SlideTransition(TRANS_MODE.LEVEL); break;
		case 1: SlideTransition(TRANS_MODE.ABOUT); break;
		case 0: game_end(); break;
	}
}