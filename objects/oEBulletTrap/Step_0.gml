/// @desc Bullet Direction for Trap

// Bullet Characteristics

x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);

// Bullet Wall Collision

if (place_meeting(x,y,oWall)) && (image_index != 0) 
{
	while (place_meeting(x,y,oWall))
	{
		x -= lengthdir_x(1,direction);
		y -= lengthdir_y(1,direction);
	}
	spd = 0;
	instance_change(oHitSpark,true);
}

// Liquid Particles

if (o_controller.particles = 1) {
	if (place_meeting(x,y,o_water)) {
		part_particles_create_colour(o_particles.ps, other.x, other.y, o_particles.pt_splash, make_colour_rgb(52, 152, 219), random_range(3, 6));
	}
	if (place_meeting(x,y,o_lava)) {
		part_particles_create_colour(o_particles.ps, other.x, other.y, o_particles.pt_splash, make_colour_rgb(211, 84, 0), random_range(3, 6));
	}
}