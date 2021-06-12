/// @desc Input, Movement and Collisions 

// Player Input

if (hascontrol)
{
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);
	key_crouch = keyboard_check(vk_down) || keyboard_check(ord("S"));
	key_climbup = keyboard_check(vk_up) || keyboard_check(ord("W"));
	key_climbdown = keyboard_check(vk_down) || keyboard_check(ord("S"));
	key_ability = keyboard_check(ord("Q"));

	if (key_left) || (key_right) || (key_jump) || (key_crouch) || (key_climbup) || (key_climbdown) || (key_ability)
	{
		controller = 0;
	}

	if (abs(gamepad_axis_value(0,gp_axislh)) > 0.2)
	{
		key_left = abs(min(gamepad_axis_value(0,gp_axislh),0));
		key_right = max(gamepad_axis_value(0,gp_axislh),0);
		controller = 1;
	}

	if (gamepad_button_check_pressed(0,gp_face1))
	{
		key_jump = 	1;
		controller = 1;
	}
	
	if (gamepad_button_check_pressed(0,gp_face3))
	{
		key_ability = 1;
		controller = 1;
	}
}
else
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
	key_crouch = 0;
	key_ability = 0;
}

// Calculate Movemement

var move = key_right - key_left;

hsp = (move * walksp) + gunkickx;
gunkickx = 0;
vsp = (vsp + grv) + gunkicky;
gunkicky = 0;

// Climbing

if (place_meeting(x,y,oLadder))
{
	climbing = 1;
	grv = 0;
	vsp = 0;
	if (key_climbup) {
		vsp = -3;
	}
	if (key_climbdown) {
		vsp = 3;
	}
}
else {
	climbing = 0;
	grv = 0.3;	
}

// Jump

canjump -= 1; // Reduce Jump Buffer Every Frame
if (global.jump = 0) && (canjump > 0) && (key_jump)
{
	grv = 0.3;
	vsp = -7; // Jump Height
	canjump = 0;
}

// Horizontal Collision

if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

// Veritcal Collision

if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

// Animation

if (!place_meeting(x,y+1,oWall)) && (!place_meeting(x,y-1,oLadder))
{
	sprite_index = sPlayerA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	canjump = 10; // Jump Buffer on Ground
	if (sprite_index = sPlayerA) 
	{
		audio_sound_pitch(snLanding,choose(0.8,1.0,1.2));
		audio_play_sound(snLanding,5,false);
		repeat(5)
		{
			with (instance_create_layer(x,bbox_bottom,"Player",oDust))
			{
				vsp = 0;	
			}
		}
	}
	image_speed = 1;
	
	if (hsp == 0)
	{
		sprite_index = sPlayer;
	}
	else 
	{
		sprite_index = sPlayerR;
	}
}

if (climbing = 1) && (!place_meeting(x,y+1,oWall))
{
	sprite_index = sPlayerCl;
}

if (hsp == 0) && (place_meeting(x,y+1,oWall)) && (key_crouch)
{
	sprite_index = sPlayerC;
	mask_index = sPlayerC;
}

if (hsp != 0) image_xscale = sign(hsp);

if (hit >= 1) {
	sprite_index = sPlayerH;
	image_speed = 1;
	hit = hit - 1;
}

// Abilities

if (global.jump = 1) && (canjump > 0) && (key_jump)  {
	grv = 0.3;
	vsp = -10;
	canjump = 0;
}

if (global.speed = 0) {
	walksp = 4;
	image_speed = 1;
}

if (global.speed = 1) {
	walksp = 8;
	image_speed = 1.5;
}

if (global.glide = 1) && (key_ability) {
	grv = 0.1;
	vsp = -3;
	sprite_index = sPlayerG;
	image_speed = 1;
}