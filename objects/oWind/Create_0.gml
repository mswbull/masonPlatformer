/// @desc Wind Setup

time = 30;
alarm[0] = time;

particle_system = part_system_create();

particle_wind = part_type_create();

part_type_shape(particle_wind, pt_shape_cloud);
part_type_size(particle_wind, 1, 1, 0, 0);
part_type_direction(particle_wind, 180, 180, 0, 0);
part_type_speed(particle_wind, 1.5, 2, 0, 0);
part_type_alpha1(particle_wind, 0.01);
part_type_life(particle_wind, 960, 960);