/// @desc Variables and Ending Text

gunsprite = layer_sprite_get_id("TitleAssets","gGun");

if (global.hasgun == true) && (global.kills > 0)
{
	endtext[0] = "Congratulations";
	endtext[1] = "You collected " + string(global.coins) + " coins";
	if (global.coins == 1) endtext[1] = "You defeated 1 coin";
	endtext[2] = "You defeated " + string(global.kills) + " enemies";
	if (global.kills == 1) endtext[2] = "You defeated 1 enemy";
	endtext[3] = "";
}
else
{
	layer_sprite_destroy(gunsprite);
	endtext[0] = "Congratulations";
	endtext[1] = "You collected " + string(global.coins) + " coins";
	if (global.coins == 1) endtext[1] = "You defeated 1 coin";
	endtext[2] = "You completed the game without collecting the ninja stars";
	endtext[3] = "";
}

spd = 0.25;
letters = 0;
currentline = 0;
length = string_length(endtext[currentline]);
text = "";