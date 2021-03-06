/// @description Update Camera

// Update Destination

if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
	
	if ((follow).object_index == oPDead)
	{
		x = xTo;
		y = yTo;
	}
}

// Update Object Position

x += (xTo - x) /25;
y += (yTo - y) /25;

x = clamp(x,view_w_half+buff,room_width-view_w_half-buff);
y = clamp(y,view_h_half+buff,room_height-view_h_half-buff);

// Screen Shake

x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));

// Update Camera View

camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

// Parallax

if (room != rMenu) && (room != rEnding)
{
	if (layer_exists("ParallaxFront"))
	{
		layer_x("ParallaxFront",x/2);
	}

	if (layer_exists("ParallaxBack"))
	{
		layer_x("ParallaxBack",x/4);
	}
}