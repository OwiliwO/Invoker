/// @description Изменение уровня демона


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
if (!instance_exists(obj_modify_demons)) instance_create_layer(0, 0, "Instances", obj_modify_demons);
if (instance_exists(obj_ui)) obj_ui.statistic_hp -= round(obj_ui.statistic_hp / 2);

alarm[0] = 60 * limit_change_level;