/// @desc Spawn Lava Particles

repeat(random_range(1, 6)) {
	var xx = random_range(bbox_left, bbox_right);
	var yy = bbox_top;
	
	instance_create_depth(xx, yy, depth, oLavaParticle);
}

// Reset
spawn_time = random_range(0.5, 2);

alarm_set(0, spawn_time * room_speed);