/// @description Итерация


levitation_time     += 0.05 * levitation_speed;
y                   = start_y + sin(levitation_time + levitation_offset) * levitation_height;


if (current_level != level_demon_0) current_image_index = current_level.image_index;
current_image_alpha = current_level.image_alpha;


if (current_health_point <= 0) {
	if(array_length(remaining_levels) > 0) {
	    var index = irandom(array_length(remaining_levels) - 1);
	    var level_num = remaining_levels[index];
	    current_level = variable_instance_get(id, "level_demon_" + string(level_num));
    
	    array_delete(remaining_levels, index, 1);
	} else {
		remaining_levels = [1, 2, 3, 4, 5, 6, 7];
		var index = irandom(array_length(remaining_levels) - 1);
		var level_num = remaining_levels[index];
		current_level = variable_instance_get(id, "level_demon_" + string(level_num));
    
		array_delete(remaining_levels, index, 1);
	}
	if (instance_exists(obj_modify_demons)) instance_destroy(obj_modify_demons);
	if (!instance_exists(obj_modify_demons)) instance_create_layer(0, 0, "Instances", obj_modify_demons);
	if (instance_exists(obj_ui)) obj_ui.statistic_debuff_hp -= 4;
	current_health_point = current_level.statistic_hp;
	is_killing_demon = true;
	
	alarm[0] = 60 * limit_change_level;
}


if (image_blend == c_red) {
	var _shake_x = irandom_range(-4, 4);
    x += _shake_x;
	
	shake_timer++;
	
	if (shake_timer >= 5) {
		image_blend = c_white;
		
		x = start_x;
		
		shake_timer = 0;
    }
}

