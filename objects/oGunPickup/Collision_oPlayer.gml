/// @desc Equip Gun

if (global.hasgun == false) {
	global.hasgun = true;
	instance_create_layer(oPlayer.x,oPlayer.y,"Gun",oGun);
	audio_play_sound(snCollect,5,false);
	instance_destroy();
}