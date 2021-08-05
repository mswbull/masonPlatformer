/// @desc Fog Setup

time = 30;
alarm[0] = time;

particle_system = part_system_create();

particle_fog = part_type_create();

part_type_shape(particle_fog, pt_shape_cloud);
part_type_size(particle_fog, 1, 1, 0, 0);
part_type_direction(particle_fog, 180, 180, 0, 0);
part_type_speed(particle_fog, 0.01, 0.02, 0, 0);
part_type_alpha3(particle_fog, 0.01, 0.1, 0.01);
part_type_life(particle_fog, 240, 240);