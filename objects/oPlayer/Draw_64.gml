/// @desc Draw Health Bar

DrawSetText(c_black, fOSD, fa_left, fa_top);
draw_text_transformed(8,12,"Health: ", 1,1,0);
draw_set_colour(c_white);
draw_text_transformed(10,10,"Health: ", 1,1,0);

draw_sprite(sHealthBarBackground, 0, healthbar_x, healthbar_y);
draw_sprite_stretched(sHealthBar, 0, healthbar_x, healthbar_y, min((hp/hp_max) * healthbar_width, healthbar_width), healthbar_height);
draw_sprite(sHealthBarBorder, 0, healthbar_x, healthbar_y);
