/// @desc Draw OSD

if (room != oMenu) && (instance_exists(oPlayer)) && (global.coins > 0)
{
	cointextscale = max(cointextscale * 0.95, 1);
	DrawSetText(c_black,fMenu,fa_right,fa_top);
	draw_text_transformed(RES_W-8,12,string(global.coins) + " Coins",cointextscale,cointextscale,0);
	draw_text_transformed(RES_W-8,12,string(global.coins) + " Coins",cointextscale,cointextscale,0);
	draw_set_colour(c_white);
	draw_text_transformed(RES_W-10,10,string(global.coins) + " Coins",cointextscale,cointextscale,0);
}

if (room != oMenu) && (instance_exists(oPlayer)) && (global.kills > 0)
{
	killtextscale = max(killtextscale * 0.95, 1);
	DrawSetText(c_black,fMenu,fa_right,fa_top);
	draw_text_transformed(RES_W-8,70,string(global.kills) + " Ninjas",killtextscale,killtextscale,0);
	draw_set_colour(c_white);
	draw_text_transformed(RES_W-10,68,string(global.kills) + " Ninjas",killtextscale,killtextscale,0);
}

if (room != oMenu) && (instance_exists(oPlayer)) && (global.hasgun == 0)
{
	DrawSetText(c_black,fOSD,fa_left,fa_top);
	draw_text_transformed(8,45,"Equipped: None",1,1,0);
	draw_set_colour(c_white);
	draw_text_transformed(10,43,"Equipped: None",1,1,0);
}

if (room != oMenu) && (instance_exists(oPlayer)) && (global.hasgun == 1)
{
	DrawSetText(c_black,fOSD,fa_left,fa_top);
	draw_text_transformed(8,45,"Equipped: Ninja Stars",1,1,0);
	draw_set_colour(c_white);
	draw_text_transformed(10,43,"Equipped: Ninja Stars",1,1,0);
}

if (room != oMenu) && (instance_exists(oPlayer)) && (global.jump == 0)
{
	DrawSetText(c_black,fOSD,fa_left,fa_top);
	draw_text_transformed(8,80,"Ability: None",1,1,0);
	draw_set_colour(c_white);
	draw_text_transformed(10,77,"Ability: None",1,1,0);
}

if (room != oMenu) && (instance_exists(oPlayer)) && (global.jump == 1)
{
	DrawSetText(c_black,fOSD,fa_left,fa_top);
	draw_text_transformed(8,80,"Ability: Super Jump",1,1,0);
	draw_set_colour(c_white);
	draw_text_transformed(10,77,"Ability: Super Jump",1,1,0);
}