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
	
	var mouse_y_gui = device_mouse_y_to_gui(0);
	if (mouse_y_gui < menu_y) && (mouse_y_gui > menu_top)
	{
		menu_cursor = (menu_y - mouse_y_gui) div (menu_itemheight * 1.5);
		
		if (mouse_check_button_pressed(mb_left))
		{
			menu_x_target = gui_width+300;
			menu_committed = menu_cursor;
			ScreenShake(4,30);
			menu_control = false;
			audio_play_sound(snMenu,5,false);
		}
	}
}

if (menu_x > gui_width+150) && (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 7: SlideTransition(TRANS_MODE.RESTART); break;
		case 6: SlideTransition(TRANS_MODE.GOTO,rOne); break;
		case 5: SlideTransition(TRANS_MODE.GOTO,rTwo); break;
		case 4: SlideTransition(TRANS_MODE.GOTO,rThree); break;
		case 3: SlideTransition(TRANS_MODE.GOTO,rFour); break;
		case 2: SlideTransition(TRANS_MODE.GOTO,rFive); break;
		case 1: SlideTransition(TRANS_MODE.GOTO,rSix); break;
		case 0: SlideTransition(TRANS_MODE.GOTO,rSeven); break;
	}
}