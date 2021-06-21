/// @desc Draw Menu

DrawSetText(c_black, fTitle, fa_left, fa_top);
draw_text_transformed(20,70,"Ninja Caves",1,1,0);
draw_set_colour(c_white);
draw_text_transformed(22,68,"Ninja Caves",1,1,0);

draw_set_font(fMenu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for (var i = 0; i < menu_items; i++)
{
	var offset = 2;
	var txt = menu[i];
	if (menu_cursor == i)
	{
		txt = string_insert("> ", txt, 0);
		var	col = c_white;
	}
	else
	{
		var col = c_grey;
	}
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (i * 1.5));
	draw_set_color(c_black);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
}
draw_set_color(c_black);
draw_rectangle(gui_width,gui_height-200,gui_width+900,gui_height,false);