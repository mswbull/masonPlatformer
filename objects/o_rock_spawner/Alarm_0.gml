/// @desc Spawn Rate

repeat(random_range(1, 6)) {
	instance_create_layer(x,y,layer,o_rock);
}

// Reset
spawn_time = random_range(0.5, 2);

alarm_set(0, spawn_time * room_speed);