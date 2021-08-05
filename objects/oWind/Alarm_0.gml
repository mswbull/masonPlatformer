/// @desc Create Wind

alarm_set(0, time);

var camera_x = camera_get_view_x(view_camera[0])
var camera_y = camera_get_view_y(view_camera[0])

var camera_width = camera_get_view_width(view_camera[0]);
var camera_height = camera_get_view_height(view_camera[0]);

repeat(50) {
	var random_y = irandom_range(0, camera_height);
	part_particles_create(particle_system, camera_x + camera_width + 20, camera_y + random_y, particle_wind, 1);
}