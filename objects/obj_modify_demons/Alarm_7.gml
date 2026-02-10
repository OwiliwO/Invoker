/// @description Mania


if (obj_demons.current_level != obj_demons.level_demon_0 && instance_exists(obj_invoker_system)) {
	is_debuff_mania = true;
	
	var _key_left_low_re = obj_invoker_system.key_left_low;
	var _key_left_mid_re = obj_invoker_system.key_left_mid;
	var _key_left_high_re = obj_invoker_system.key_left_high;
	
	obj_invoker_system.key_left_low = obj_invoker_system.key_right_low;
	obj_invoker_system.key_left_mid = obj_invoker_system.key_right_mid;
	obj_invoker_system.key_left_high = obj_invoker_system.key_right_high;
	obj_invoker_system.key_right_low = _key_left_low_re;
	obj_invoker_system.key_right_mid = _key_left_mid_re;
	obj_invoker_system.key_right_high = _key_left_high_re;
	
	
	var _key_left_thumb_re = obj_invoker_system.key_left_thumb;
	var _key_left_index_re = obj_invoker_system.key_left_index;
	var _key_left_middle_re = obj_invoker_system.key_left_middle;
	var _key_left_ring_re = obj_invoker_system.key_left_ring;
	var _key_left_pinky_re = obj_invoker_system.key_left_pinky;
	
	obj_invoker_system.key_left_thumb = obj_invoker_system.key_right_thumb;
	obj_invoker_system.key_left_index = obj_invoker_system.key_right_index;
	obj_invoker_system.key_left_middle = obj_invoker_system.key_right_middle;
	obj_invoker_system.key_left_ring = obj_invoker_system.key_right_ring;
	obj_invoker_system.key_left_pinky = obj_invoker_system.key_right_pinky;
	obj_invoker_system.key_right_thumb = _key_left_thumb_re;
	obj_invoker_system.key_right_index = _key_left_index_re;
	obj_invoker_system.key_right_middle = _key_left_middle_re;
	obj_invoker_system.key_right_ring = _key_left_ring_re;
	obj_invoker_system.key_right_pinky = _key_left_pinky_re;
	
	
	obj_invoker_system.key_left_attach_index = obj_invoker_system.key_right_attach_index;
	obj_invoker_system.key_left_attach_middle = obj_invoker_system.key_right_attach_middle;
	obj_invoker_system.key_left_attach_ring = obj_invoker_system.key_right_attach_ring;
	obj_invoker_system.key_left_attach_pinky = obj_invoker_system.key_right_attach_pinky;
	obj_invoker_system.key_right_attach_index = _key_left_index_re;
	obj_invoker_system.key_right_attach_middle = _key_left_middle_re;
	obj_invoker_system.key_right_attach_ring = _key_left_ring_re;
	obj_invoker_system.key_right_attach_pinky = _key_left_pinky_re;
}