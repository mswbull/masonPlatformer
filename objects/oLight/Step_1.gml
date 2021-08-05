/// @desc Light

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

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;	
}
else 
{
	image_yscale = 1;	
}