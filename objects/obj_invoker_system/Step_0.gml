/// @description Итерация


#region ===== ProcessMainIteration =====

// Обработка позиций рук (левая)
if (keyboard_check_pressed(key_left_low)) { 
	left_hand_pos = 0;
	audio_play_sound(snd_hand_lower, 100, 0);
	if (!instance_exists(obj_modify_handpos)) instance_create_layer(0, 0, "Instances", obj_modify_handpos); 
}
if (keyboard_check_pressed(key_left_mid)) {
	left_hand_pos = 1;
	audio_play_sound(snd_hand_normal, 100, 0);
	if (!instance_exists(obj_modify_handpos)) instance_create_layer(0, 0, "Instances", obj_modify_handpos);
}
if (keyboard_check_pressed(key_left_high)) {
	left_hand_pos = 2;
	audio_play_sound(snd_hand_higher, 100, 0);
	if (!instance_exists(obj_modify_handpos)) instance_create_layer(0, 0, "Instances", obj_modify_handpos);
}

// Обработка позиций рук (правая)
if (keyboard_check_pressed(key_right_low)) {
	right_hand_pos = 0;
	audio_play_sound(snd_hand_lower, 100, 0);
	if (!instance_exists(obj_modify_handpos)) instance_create_layer(0, 0, "Instances", obj_modify_handpos);
}
if (keyboard_check_pressed(key_right_mid)) {         
	right_hand_pos = 1;
	audio_play_sound(snd_hand_normal, 100, 0);
	if (!instance_exists(obj_modify_handpos)) instance_create_layer(0, 0, "Instances", obj_modify_handpos);
}
if (keyboard_check_pressed(key_right_high)) {       
	right_hand_pos = 2;
	audio_play_sound(snd_hand_higher, 100, 0);
	if (!instance_exists(obj_modify_handpos)) instance_create_layer(0, 0, "Instances", obj_modify_handpos);
}

// Проверка нажатия Alt
var _alt_pressed = keyboard_check(vk_alt);

#endregion

#region ===== ProcessLeftHandIteration =====

// Левая рука: сгибание пальцев (без Alt)
if (!_alt_pressed) {
    if (keyboard_check_pressed(key_left_thumb))    { left_fingers[0] = (left_fingers[0] + 1) % 2; audio_play_sound(snd_finger_thumb, 100, 0); }
    if (keyboard_check_pressed(key_left_index))    { left_fingers[1] = (left_fingers[1] + 1) % 2; audio_play_sound(snd_finger_index, 100, 0); }
    if (keyboard_check_pressed(key_left_middle))   { left_fingers[2] = (left_fingers[2] + 1) % 2; audio_play_sound(snd_finger_middle, 100, 0); }
    if (keyboard_check_pressed(key_left_ring))     { left_fingers[3] = (left_fingers[3] + 1) % 2; audio_play_sound(snd_finger_ring, 100, 0); }
    if (keyboard_check_pressed(key_left_pinky))    { left_fingers[4] = (left_fingers[4] + 1) % 2; audio_play_sound(snd_finger_pinky, 100, 0); }
}

// Левая рука: примыкание к большому (с Alt)
if (_alt_pressed) {
    if (keyboard_check_pressed(key_left_thumb)) {
        left_fingers[0] = (left_fingers[0] + 1) % 2;
        if (left_fingers[0] == 0) {
            for (var _i = 1; _i < 5; _i++) {
                if (left_fingers[_i] == 2) left_fingers[_i] = 0;
            }
        }
    }
    
    if (keyboard_check_pressed(key_left_attach_index)) {
        if (left_fingers[0] == 1) {
            left_fingers[1] = (left_fingers[1] == 2) ? 0 : 2;
        }
    }
    if (keyboard_check_pressed(key_left_attach_middle)) {
        if (left_fingers[0] == 1) {
            left_fingers[2] = (left_fingers[2] == 2) ? 0 : 2;
        }
    }
    if (keyboard_check_pressed(key_left_attach_ring)) {
        if (left_fingers[0] == 1) {
            left_fingers[3] = (left_fingers[3] == 2) ? 0 : 2;
        }
    }
    if (keyboard_check_pressed(key_left_attach_pinky)) {
        if (left_fingers[0] == 1) {
            left_fingers[4] = (left_fingers[4] == 2) ? 0 : 2;
        }
    }
}

#endregion

#region ===== ProcessRightHandIteration =====

// Правая рука: сгибание пальцев (без Alt)
if (!_alt_pressed) {
    if (keyboard_check_pressed(key_right_thumb))   { right_fingers[0] = (right_fingers[0] + 1) % 2; audio_play_sound(snd_finger_thumb, 100, 0); }
    if (keyboard_check_pressed(key_right_index))   { right_fingers[1] = (right_fingers[1] + 1) % 2; audio_play_sound(snd_finger_index, 100, 0); }
    if (keyboard_check_pressed(key_right_middle))  { right_fingers[2] = (right_fingers[2] + 1) % 2; audio_play_sound(snd_finger_middle, 100, 0); }
    if (keyboard_check_pressed(key_right_ring))    { right_fingers[3] = (right_fingers[3] + 1) % 2; audio_play_sound(snd_finger_ring, 100, 0); }
    if (keyboard_check_pressed(key_right_pinky))   { right_fingers[4] = (right_fingers[4] + 1) % 2; audio_play_sound(snd_finger_pinky, 100, 0); }
}

// Правая рука: примыкание к большому (с Alt)
if (_alt_pressed) {
    if (keyboard_check_pressed(key_right_thumb)) {
        right_fingers[0] = (right_fingers[0] + 1) % 2;
        if (right_fingers[0] == 0) {
            for (var _i = 1; _i < 5; _i++) {
                if (right_fingers[_i] == 2) right_fingers[_i] = 0;
            }
        }
    }
    
    if (keyboard_check_pressed(key_right_index) && _alt_pressed && right_fingers[0] == 1) {
        right_fingers[1] = (right_fingers[1] == 2) ? 0 : 2;
    }
    if (keyboard_check_pressed(key_right_middle) && _alt_pressed && right_fingers[0] == 1) {
        right_fingers[2] = (right_fingers[2] == 2) ? 0 : 2;
    }
    if (keyboard_check_pressed(key_right_ring) && _alt_pressed && right_fingers[0] == 1) {
        right_fingers[3] = (right_fingers[3] == 2) ? 0 : 2;
    }
    if (keyboard_check_pressed(key_right_pinky) && _alt_pressed && right_fingers[0] == 1) {
        right_fingers[4] = (right_fingers[4] == 2) ? 0 : 2;
    }
}

#endregion

#region ===== ProcessSpellCast =====

// Применение заклинания
if (keyboard_check_pressed(key_cast)) {
	if (instance_exists(obj_hands) && instance_exists(obj_ui)) {
		if (!obj_hands.is_fail_cast) {
			var _spell_found = false;
			var _first = ds_map_find_first(global.spell_database);
            var _key = _first;
            
            while (!is_undefined(_key)) {
                var _parts = string_split(_key, "|");
                var _db_left = _parts[0];
                var _db_right = _parts[1];
                
                var _match_left = true;
                var _match_right = true;
                
                for (var _i = 0; _i < 5; _i++) {
                    var _db_digit = string_char_at(_db_left, _i + 1);
                    if (_db_digit != "-") {
                        var _db_value = real(_db_digit);
                        if (_db_value != left_fingers[_i]) {
                            _match_left = false;
                            break;
                        }
                    } else break;
                }
                
                for (var _i = 0; _i < 5; _i++) {
                    var _db_digit = string_char_at(_db_right, _i + 1);
                    if (_db_digit != "-") {
                        var _db_value = real(_db_digit);
                        if (_db_value != right_fingers[_i]) {
                            _match_right = false;
                            break;
                        }
                    } else break;
                }
                
                if (_match_left && _match_right) {
                    var _spell_name = global.spell_database[? _key];
                    var _spell_object = asset_get_index("obj_" + _spell_name);
                    
                    if (_spell_object != -1 && !instance_exists(_spell_object)) {
                        instance_create_layer(room_width / 2, room_height / 2, "Instances", _spell_object);
                        _spell_found = true;
						
						for (var _i = 0; _i < 5; _i++) {
							if (left_fingers[_i] != 0) left_fingers[_i] = 0;
							if (right_fingers[_i] != 0) right_fingers[_i] = 0;
						}
                        
						audio_play_sound(snd_spell_success, 100, 0);
                        with (obj_hands) {
                            is_success_cast = true;
                            image_index = 0;
                        }
                    }
                    break;
                }
                
                _key = ds_map_find_next(global.spell_database, _key);
            }
			

			if (!_spell_found) {
				audio_play_sound(snd_spell_fail, 100, 0);
				with (obj_hands) {
					is_fail_cast = true;
					image_index = 0;
				}
			}
		}
	}
}

#endregion

#region ===== ProcessBook =====

// Закрытие книги
if (keyboard_check_pressed(key_book) && instance_exists(obj_book)) {
	if (instance_exists(obj_hands)) {
		with (obj_hands) {
			visible = true;
		}
		if (instance_exists(obj_timer)) {
			with (obj_timer) {
				visible = true;
			}
		}
	}
	audio_play_sound(snd_book_close, 100, 0);
	
	obj_book.state = "falling";
}

// Открытие книги
if (keyboard_check_pressed(key_book) && !instance_exists(obj_book)) {
	if (instance_exists(obj_hands)) {
		with (obj_hands) {
			visible = false;
		}
		if (instance_exists(obj_timer)) {
			with (obj_timer) {
				visible = false;
			}
		}
	}
	audio_play_sound(snd_book_open, 100, 0);
	
	instance_create_layer(room_width / 2 + 40, room_height, "Instances", obj_book);
}

#endregion

camera_shake_update();
