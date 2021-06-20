/// @desc Score Setup

global.hasgun = false;
global.jump = 0;
global.speed = 0;
global.glide = 0;
global.coinsthisroom = 0;
global.killsthisroom = 0;
global.crystal = 0;

if gamepad_is_connected(0) {
	global.gamepad = 0
}

if gamepad_is_connected(1) {
	global.gamepad = 1
}