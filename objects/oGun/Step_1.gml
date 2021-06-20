/// @desc Gun and Shooting

x = oPlayer.x+0;
y = oPlayer.y+0;

if (oPlayer.controller == 0)
{
	image_angle = point_direction(x,y,mouse_x, mouse_y);
}
else
{
	var controllerh = gamepad_axis_value(global.gamepad,gp_axisrh);
	var controllerv = gamepad_axis_value(global.gamepad,gp_axisrv);	
	if (abs(controllerh) > 0.2) || (abs(controllerv) > 0.2)
	{
		controllerangle = point_direction(0,0,controllerh,controllerv)
	}
	image_angle = controllerangle;
}

firingdelay = firingdelay - 1;
recoil = max(0,recoil - 1);

if ((mouse_check_button(mb_left)) || (gamepad_button_check(global.gamepad,gp_shoulderrb)) || (gamepad_button_check(global.gamepad,gp_shoulderr))) && (firingdelay < 0)
{
	recoil = 4;
	firingdelay = 25; // Firing Delay
	ScreenShake(2,10);
	audio_sound_pitch(snShot,choose(0.8,1.0,1.2));
	audio_play_sound(snShot,5,false);
	with (instance_create_layer(x,y,"Bullets",oBullet))
	{
		spd = 15; // Bullet Speed
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}
	
	with (oPlayer)
	{
		// gunkickx = lengthdir_x(1.5, other.image_angle-180); // Horizontal Kickback
		gunkicky = lengthdir_y(1.0, other.image_angle-180);
	}
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;	
}
else 
{
	image_yscale = 1;	
}