/// @description Итерация


if (image_alpha >= 0) image_alpha -= 0.002;
image_xscale += 0.005;
image_yscale += 0.005;

if (image_index > image_number - 0.6) {
	image_speed = 0;
}

