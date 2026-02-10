/// @description Итерация


if (statistic_duration > 0) {
	for (var i = array_length(flashes) - 1; i >= 0; i--) {
	    flashes[i].timer--;
	    if (flashes[i].timer <= 0) {
	        array_delete(flashes, i, 1);
	    }
	}

	if (array_length(flashes) < max_flashes && random(1) < flash_chance) {
	    var new_flash = {
	        x: random(room_width),
	        y: random(room_height),
	        sprite: flash_sprites[irandom(2)],
	        timer: 10,
	        scale: random_range(0.5, 1.5),
	        angle: random(360),
	        alpha: 1
	    };
	    array_push(flashes, new_flash);
	}

	for (var i = 0; i < array_length(flashes); i++) {
	    flashes[i].alpha = flashes[i].timer / 10;
	    flashes[i].scale *= 0.95;
	}

	if (image_index > image_number - 0.6) {
		image_speed = 0;
	}
}

