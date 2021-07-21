ps = part_system_create();

pt_splash = part_type_create();
part_type_shape(pt_splash,pt_shape_disk);
part_type_size(pt_splash,0.1,0.3,0,0);
part_type_scale(pt_splash,1,1);
part_type_alpha3(pt_splash,1,1,0);
part_type_speed(pt_splash,3,4,0,0);
part_type_direction(pt_splash,0,180,0,0);
part_type_gravity(pt_splash,0.2,270);
part_type_orientation(pt_splash,0,0,0,0,1);
part_type_life(pt_splash,15,30);