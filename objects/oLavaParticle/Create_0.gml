/// @desc Lava Particle Setup

horizontal_movement = random_range(-1, 1);
vertical_movement = random_range(-1, -3);

_gravity = random_range(0.01, 0.03);

fade_speed = random_range(0.01, 0.02);

image_xscale = random_range(0.2, 1);
image_yscale = image_xscale;

image_speed = 0;
image_index = irandom_range(0, image_number);
pixel_color = 0;