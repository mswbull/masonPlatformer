/// @desc Draw Lighting

if (surface_exists(lighting_surface) == false) {
	lighting_surface = surface_create(room_width, room_height);
}

surface_set_target(lighting_surface);

draw_clear_alpha(c_black, tansparency); // Set Room Colour

with(oLightingCutout) {
	
	var wobble_amount_x = image_xscale + random_range(-wobble, wobble);
	var wobble_amount_y = image_yscale + random_range(-wobble, wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(sprite_index, image_index, x, y, wobble_amount_x, wobble_amount_y, 0, c_white, 1); // Default Cutout Lighting
	
	gpu_set_blendmode(bm_add);
	
	draw_sprite_ext(sprite_index, image_index, x, y, wobble_amount_x, wobble_amount_y, 0, colour, intensity); // Custom Cutout Lighting
	
	gpu_set_blendmode(bm_normal);
}

var lava_wobble = 0.05;
with(oLavaParticle) {
	
	var wobble_amount_x = image_xscale + random_range(-lava_wobble, lava_wobble);
	var wobble_amount_y = image_yscale + random_range(-lava_wobble, lava_wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(sLighting, 0, x, y, wobble_amount_x, wobble_amount_y, 0, c_white, 1); // Default Cutout Lighting
	
	gpu_set_blendmode(bm_add);
	
	draw_sprite_ext(sLighting, 0, x, y, wobble_amount_x, wobble_amount_y, 0, c_orange, image_alpha); // Custom Cutout Lighting
	
	gpu_set_blendmode(bm_normal);
}

surface_reset_target();

draw_surface(lighting_surface, 0, 0);