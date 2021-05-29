if (instance_exists(oPlayer)) && (point_in_circle(oPlayer.x,oPlayer.y,x,y,64)) && (!instance_exists(oText))
{
	nearby = true;
	if (keyboard_check_pressed(ord("E"))) || (gamepad_button_check(0,gp_face4))
	{
		with (instance_create_layer(x,y-64,layer,oText))
		{
			text = other.text;
			length = string_length(text);
		}
	
		with (oCamera)
		{
			follow = other.id;
		}
	}
} else nearby = false;