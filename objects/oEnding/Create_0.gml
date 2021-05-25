gunsprite = layer_sprite_get_id("TitleAssets","gGun");

if (global.hasgun == true) && (global.kills > 0)
{
	endtext[0] = "Test " + string(global.kills) + " enemies.";
	if (global.kills == 1) endtext[0] = "enemy.";
	endtext[1] = "Test.";
	endtext[2] = "Test.";
	endtext[3] = "Test.";
	endtext[4] = "Test.";
	endtext[5] = "Test.";
	endtext[6] = "";
}
else
{
	layer_sprite_destroy(gunsprite);
	endtext[0] = "Test3.";
	endtext[1] = "Test3.";
	endtext[2] = "Test3.";
	endtext[3] = "Test3.";
	endtext[4] = "Test3.";
	endtext[5] = "Test3.";
	endtext[6] = "";
}

spd = 0.25;
letters = 0;
currentline = 0;
length = string_length(endtext[currentline]);
text = "";