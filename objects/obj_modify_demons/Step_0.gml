/// @description Итерация


if (instance_exists(obj_invoker_system) && instance_exists(obj_demons) && is_debuff_nixa) {
	if (obj_invoker_system.left_fingers[obj_demons.current_level.statistic_index_finger] != 0) obj_invoker_system.left_fingers[obj_demons.current_level.statistic_index_finger] = 0;
	if (obj_invoker_system.right_fingers[obj_demons.current_level.statistic_index_finger] != 0) obj_invoker_system.right_fingers[obj_demons.current_level.statistic_index_finger] = 0;
}

if (instance_exists(obj_invoker_system) && is_debuff_lamashtu) {
	obj_invoker_system.left_hand_pos = is_debuff_left_pos_lamashtu;
	obj_invoker_system.right_hand_pos = is_debuff_right_pos_lamashtu;
}
