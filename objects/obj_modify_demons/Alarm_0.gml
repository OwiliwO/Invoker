/// @description Деинициализация


if (!ds_map_empty(taken_spells_kabidzi)) {
        var _keys = ds_map_keys_to_array(taken_spells_kabidzi);
		 
		for (var _i = 0; _i < array_length(_keys); _i++) {
	    var _key = _keys[_i];
	    var _spell_name = ds_map_find_value(taken_spells_kabidzi, _key);
        
	    ds_map_add(global.spell_database, _key, _spell_name);
        
	    ds_map_delete(taken_spells_kabidzi, _key);
	}
    
	ds_map_destroy(taken_spells_kabidzi);
}

if (is_debuff_mania && instance_exists(obj_invoker_system) && instance_exists(obj_settings)) {
	obj_invoker_system.key_left_low = obj_settings.key_left_low;
	obj_invoker_system.key_left_mid = obj_settings.key_left_mid;
	obj_invoker_system.key_left_high = obj_settings.key_left_high;
	obj_invoker_system.key_right_low = obj_settings.key_right_low;
	obj_invoker_system.key_right_mid = obj_settings.key_right_mid;
	obj_invoker_system.key_right_high = obj_settings.key_right_high;
		
	obj_invoker_system.key_left_thumb = obj_settings.key_left_thumb;
	obj_invoker_system.key_left_index = obj_settings.key_left_index;
	obj_invoker_system.key_left_middle = obj_settings.key_left_middle;
	obj_invoker_system.key_left_ring = obj_settings.key_left_ring;
	obj_invoker_system.key_left_pinky = obj_settings.key_left_pinky;
	obj_invoker_system.key_right_thumb = obj_settings.key_right_thumb;
	obj_invoker_system.key_right_index = obj_settings.key_right_index;
	obj_invoker_system.key_right_middle = obj_settings.key_right_middle;
	obj_invoker_system.key_right_ring = obj_settings.key_right_ring;
	obj_invoker_system.key_right_pinky = obj_settings.key_right_pinky;
	
	obj_invoker_system.key_left_attach_index = obj_settings.key_left_attach_index;
	obj_invoker_system.key_left_attach_middle = obj_settings.key_left_attach_middle;
	obj_invoker_system.key_left_attach_ring = obj_settings.key_left_attach_ring;
	obj_invoker_system.key_left_attach_pinky = obj_settings.key_left_attach_pinky;
	obj_invoker_system.key_right_attach_index = obj_settings.key_right_attach_index;
	obj_invoker_system.key_right_attach_middle = obj_settings.key_right_attach_middle;
	obj_invoker_system.key_right_attach_ring = obj_settings.key_right_attach_ring;
	obj_invoker_system.key_right_attach_pinky = obj_settings.key_right_attach_pinky;
}

instance_destroy();