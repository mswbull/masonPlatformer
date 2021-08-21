/// @description Insert description here
// You can write your code in this editor

alarm_set(0, time);

var xpos = x;
var ypos = y;

repeat(20) {

	var random_x = irandom_range(0, sprite_width);
	var random_y = irandom_range(0, sprite_height);
	
	part_particles_create(particle_system, xpos + random_x, ypos + random_y, particle_fog, 1);

}