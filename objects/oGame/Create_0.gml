/// @desc Game Setup

#macro RES_W 1024
#macro RES_H 768
display_set_gui_size(RES_W,RES_H);

global.hasgun = false;
global.coins = 0;
global.coinsthisroom = 0;
global.kills = 0;
global.killsthisroom = 0;
cointextscale = 1;
killtextscale = 1;

skip = 0;