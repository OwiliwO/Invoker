/// @description Инициализация


if (instance_exists(obj_invoker_system) && instance_exists(obj_ui) && instance_exists(obj_modify_demons)) {
	if (!obj_modify_demons.is_debuff_lamashtu) {
		if (obj_invoker_system.left_hand_pos == 0 && obj_ui.statistic_mp > 0) {
			obj_ui.statistic_max_mp += 60;
			obj_ui.statistic_mp += 60;
			obj_ui.statistic_buff_mp += 0.5;
		}
		if (obj_invoker_system.left_hand_pos == 1 && obj_ui.statistic_hp > 0) {
			obj_ui.statistic_debuff_hp += 5;
			obj_ui.statistic_max_hp += 60;
			obj_ui.statistic_hp += 60;
		}
		if (obj_invoker_system.left_hand_pos == 2) {
			obj_ui.statistic_buff_damage += 20;
		}
	
		if (obj_invoker_system.right_hand_pos == 0 && obj_ui.statistic_mp > 0) {
			obj_ui.statistic_max_mp += 60;
			obj_ui.statistic_mp += 60;
			obj_ui.statistic_buff_mp += 0.5;
		}
		if (obj_invoker_system.right_hand_pos == 1 && obj_ui.statistic_hp > 0) {
			obj_ui.statistic_debuff_hp += 5;
			obj_ui.statistic_max_hp += 60;
			obj_ui.statistic_hp += 60;
		}
		if (obj_invoker_system.right_hand_pos == 2) {
			obj_ui.statistic_buff_damage += 20;
		}
	
	
		if (obj_invoker_system.old_left_hand_pos == 0) {
			obj_ui.statistic_max_mp -= 60;
			obj_ui.statistic_mp -= 60;
			obj_ui.statistic_buff_mp -= 0.5;
		}
		if (obj_invoker_system.old_left_hand_pos == 1) {
			obj_ui.statistic_debuff_hp -= 5;
			obj_ui.statistic_max_hp -= 60;
			obj_ui.statistic_hp -= 60;
		}
		if (obj_invoker_system.old_left_hand_pos == 2) {
			obj_ui.statistic_buff_damage -= 20;
		}
	
		if (obj_invoker_system.old_right_hand_pos == 0) {
			obj_ui.statistic_max_mp -= 60;
			obj_ui.statistic_mp -= 60;
			obj_ui.statistic_buff_mp -= 0.5;
		}
		if (obj_invoker_system.old_right_hand_pos == 1) {
			obj_ui.statistic_debuff_hp -= 5;
			obj_ui.statistic_max_hp -= 60;
			obj_ui.statistic_hp -= 60;
		}
		if (obj_invoker_system.old_right_hand_pos == 2) {
			obj_ui.statistic_buff_damage -= 20;
		}
	
	
		obj_invoker_system.old_left_hand_pos = obj_invoker_system.left_hand_pos;
		obj_invoker_system.old_right_hand_pos = obj_invoker_system.right_hand_pos;
	}
}


instance_destroy();
















