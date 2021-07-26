function PlayerKill() {
	with (oGun) instance_destroy();
	with (oLight) instance_destroy();
	instance_change(oPDead,true);

	direction = point_direction(other.x,other.y,x,y);
	hsp = lengthdir_x(6,direction);
	vsp = lengthdir_y(4,direction)-3;
	if (sign(hsp) != 0) image_xscale = sign(hsp);

	global.hasgun = 0;
	global.haslight = 0;
	global.coins -= global.coinsthisroom;
	global.kills -= global.killsthisroom;
}

