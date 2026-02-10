/// @description Итерация


timer++;

switch (state) {
    case "rising":
        y -= rise_speed;
        
        if (y <= target_y || timer >= return_time) {
            y = target_y;
            timer = 0;
            state = "pause";
        }
        break;
        
    case "pause":
		if (timer >= pause_time) {
            timer = 0;
        }
		
		levitation_time += 0.05 * levitation_speed;
		y = target_y + sin(levitation_time + levitation_offset) * levitation_height;
        
		handle_page_navigation();
		
		break;
        
    case "falling":
        y += fall_speed;
        
        if (y >= room_height + sprite_height || timer >= destroy_time) {
            instance_destroy();
        }
        break;
}


if (room == MainMenu && keyboard_check_pressed(vk_escape)) {
	state = "falling";
}










