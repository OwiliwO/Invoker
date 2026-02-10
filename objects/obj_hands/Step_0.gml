/// @description Итерация


levitation_time     += 0.05 * levitation_speed;
y                   = start_y + sin(levitation_time + levitation_offset) * levitation_height;


if (is_success_cast) {
	sprite_index = spr_hands_success_cast;
	image_speed = 1;
	y -= 5;
	
    if (image_index > image_number - 0.5) {
		is_success_cast = false;
		sprite_index = spr_hands_normal;
		image_speed = random_range(0.5, 0.7);
		
		y = start_y;
	}
}

if (is_fail_cast) {
	sprite_index = spr_hands_fail_cast;
	image_speed = 1;
	image_blend = c_red;
	
	camera_shake(3, 2);
	
	var _shake_x = irandom_range(-6, 6);
    x += _shake_x;
	
	shake_timer++;
	
	if (shake_timer >= 5) {
        if (image_index > image_number - 0.6) {
			is_fail_cast = false;
			sprite_index = spr_hands_normal;
			image_speed = random_range(0.5, 0.7);
			image_blend = c_white;
		
			x = start_x;
		
			shake_timer = 0;
		}
    }
}










