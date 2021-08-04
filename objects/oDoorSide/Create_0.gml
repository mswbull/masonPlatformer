/// @desc Variables and Create Layer

image_speed = 0;
image_index = 0;
open = false;

mywall = instance_create_layer(x,y,layer,oWall);
with (mywall)
{
	image_xscale = other.sprite_width / sprite_width;
	image_yscale = other.sprite_height / sprite_height;
}