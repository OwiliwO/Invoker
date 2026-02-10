/// @description Итерация


if (is_anim_down) {
	image_xscale -= 0.05;
	image_yscale -= 0.05;
	
	if (image_xscale < 0.5 && image_yscale < 0.5) { is_anim_down = false; is_anim_up = true; }
}

if (is_anim_up) {
	if (image_alpha >= 0) image_alpha -= 0.009;
	image_xscale += 0.5;
	image_yscale += 0.5;
	image_angle += 0.5;
}
