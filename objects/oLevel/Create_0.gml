/// @desc Menu Setup

gui_width = 1024;
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width +200;
menu_y = gui_height - gui_margin;

menu_x_target = gui_width-gui_margin;
menu_speed = 25;
menu_font = fMenu;
menu_itemheight = font_get_size(menu_font);
menu_committed = -1;
menu_control = true;

menu[7] = "Main Menu";
menu[6] = "Level One";
menu[5] = "Level Two";
menu[4] = "Level Three";
menu[3] = "Level Four";
menu[2] = "Level Five";
menu[1] = "Level Six";
menu[0] = "Level Seven";

menu_items = array_length_1d(menu);

menu_top = menu_y - ((menu_itemheight * 1.5) * menu_items);

menu_cursor = 7;