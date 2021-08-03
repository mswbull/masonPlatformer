/// @desc Sign Text Trigger

if (instance_exists(oPlayer)) && (point_in_circle(oPlayer.x,oPlayer.y,x,y,64)) && (!instance_exists(oText))
{
	nearby = true;
	if (keyboard_check_pressed(ord("E"))) || (gamepad_button_check(global.gamepad,gp_face4))
	{
	
	} 
