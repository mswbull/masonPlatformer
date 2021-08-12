/// @desc Create Fog

alarm_set(0, time);

var camera_x = camera_get_view_x(view_camera[0]);
var camera_y = camera_get_view_y(view_camera[0]);

var camera_width = camera_get_view_width(view_camera[0]);
var camera_height = camera_get_view_height(view_camera[0]);

var xpos = oWeatherSpawner.x;
var ypos = oWeatherSpawner.y;

repeat(20) {
	// var random_x = irandom_range(0, camera_width);
	// var random_y = irandom_range(0, 200);

	var random_x = irandom_range(0, oWeatherSpawner.sprite_width);
	var random_y = irandom_range(0, oWeatherSpawner.sprite_height);
	
	// part_particles_create(particle_system, camera_x + random_x, camera_y + camera_height - random_y, particle_fog, 1);
	part_particles_create(particle_system, xpos + random_x, ypos + random_y, particle_fog, 1);

}