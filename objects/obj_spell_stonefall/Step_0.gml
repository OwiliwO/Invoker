/// @description Итерация


image_xscale -= 0.005;
image_yscale -= 0.005;
image_angle += 0.5;

if (image_index > image_number - 20.6) {
	if (instance_exists(obj_demons) && is_hurt) {
		obj_demons.image_blend = c_red;
		is_hurt = false;
	}
}

if (image_index > image_number - 0.6) {
	image_speed = 0;
	
	if (instance_exists(obj_demons) && is_hurt) {
		obj_demons.image_blend = c_red;
		is_hurt = false;
	}
}