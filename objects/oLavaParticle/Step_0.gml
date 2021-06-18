/// @desc Lava Particle Animation

// Movement
x += horizontal_movement;
y += vertical_movement;

vertical_movement += _gravity;

// Opacity
image_alpha -= fade_speed;

if(image_alpha <= 0) {
	instance_destroy();
}