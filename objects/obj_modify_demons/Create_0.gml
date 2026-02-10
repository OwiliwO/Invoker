/// @description Инициализация


taken_spells_kabidzi               = ds_map_create();
is_debuff_nixa                     = false;
is_debuff_lamashtu                 = false;
is_debuff_left_pos_lamashtu        = -1;
is_debuff_right_pos_lamashtu       = -1;
is_debuff_helda                    = false;
is_debuff_mania                    = false;

if (instance_exists(obj_invoker_system) && instance_exists(obj_ui) && instance_exists(obj_demons)) {
	if (obj_demons.current_level.name_of_demon == "White Demon of the Abyss") {
		alarm[1] = 1;
	}
	if (obj_demons.current_level.name_of_demon == "Kabidzi") {
		alarm[2] = 1;
	}
	if (obj_demons.current_level.name_of_demon == "Ampuza") {
		alarm[3] = 1;
	}
	if (obj_demons.current_level.name_of_demon == "Nixa") {
		alarm[4] = 1;
	}
	if (obj_demons.current_level.name_of_demon == "Lamashtu") {
		alarm[5] = 1;
	}
	if (obj_demons.current_level.name_of_demon == "Helda") {
		alarm[6] = 1;
	}
	if (obj_demons.current_level.name_of_demon == "Mania") {
		alarm[7] = 1;
	}
	
	alarm[0] = (60 * obj_demons.limit_change_level) - 1;
}

