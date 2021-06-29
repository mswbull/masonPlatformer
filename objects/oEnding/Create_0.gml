/// @desc Variables and Ending Text

endtext[0] = "Congratulations!";
endtext[1] = "You collected all the crystals!";
endtext[2] = "You collected " + string(global.coins) + " coins.";
if (global.coins == 1) endtext[2] = "You collected 1 coin.";
endtext[3] = "You defeated " + string(global.kills) + " enemies.";
if (global.kills == 1) endtext[3] = "You defeated 1 enemy.";
endtext[4] = "We hope you enjoyed Ninja Caves!";

spd = 0.25;
letters = 0;
currentline = 0;
length = string_length(endtext[currentline]);
text = "";