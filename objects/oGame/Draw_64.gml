/// @desc Draw Score

if (room != oMenu) && (instance_exists(oPlayer)) && (global.kills > 0)
{
	killtextscale = max(killtextscale * 0.95, 1);
	DrawSetText(c_black, fMenu, fa_right, fa_top);
	draw_text_transformed(RES_W-8,12,string(global.kills) + " Points", killtextscale,killtextscale,0);
	draw_set_colour(c_white);
	draw_text_transformed(RES_W-10,10,string(global.kills) + " Points", killtextscale,killtextscale,0);
}