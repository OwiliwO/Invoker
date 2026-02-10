/// @description Kabidzi


if (obj_demons.current_level != obj_demons.level_demon_0) {
	var _available_spells = ds_map_keys_to_array(global.spell_database);
	var _spells_to_take = min(obj_demons.current_level.stitistic_count_forgotten_spells, array_length(_available_spells));
	
	for (var _i = 0; _i < _spells_to_take; _i++) {
	    var _random_index = irandom(array_length(_available_spells) - 1);
	    var _key = _available_spells[_random_index];
        
	    var _spell_name = ds_map_find_value(global.spell_database, _key);
        
	    ds_map_add(taken_spells_kabidzi, _key, _spell_name);
        
	    ds_map_delete(global.spell_database, _key);
        
	    array_delete(_available_spells, _random_index, 1);
	}
}