/// @desc Sign Text Trigger

if (instance_exists(oPlayer)) && (point_in_circle(oPlayer.x,oPlayer.y,x,y,64)) && (!instance_exists(oText))
{
	nearby = true;
	with (instance_create_layer(x,y-64,layer,oTextMenu))
	{
		text = other.text;
		length = string_length(text);
	}
	
	with (oCamera)
	{
		follow = other.id;
	}
} else nearby = false;