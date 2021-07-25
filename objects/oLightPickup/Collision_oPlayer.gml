/// @desc Equip Light

if (global.haslight == false) {
	global.hasgun = false;
	global.haslight = true;
	instance_create_layer(oPlayer.x,oPlayer.y,"Lighting",oLight);
	audio_play_sound(snCollect,5,false);
	instance_destroy();
}