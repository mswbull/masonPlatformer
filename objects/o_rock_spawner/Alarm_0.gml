/// @desc Spawn Rate

instance_create_layer(x,y,layer,o_rock);

// Reset
spawn_time = random_range(timer01, timer02);

alarm_set(0, spawn_time * room_speed);