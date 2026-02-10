/// @description Инициализация


randomize();

global.camera_shake_data           = {
	        intensity: 0,
	        duration: 0,
	        timer: 0,
	        original_x: camera_get_view_x(view_camera[0]),
	        original_y: camera_get_view_y(view_camera[0]),
	        active: false
};

#region ===== QuickCast =====

if (instance_exists(obj_settings)) {
	// Применить заклинание
	key_cast                           = obj_settings.key_cast;

	// Открыть книгу
	key_book                           = obj_settings.key_book;
	
	// Вернуться в меню
	key_return                         = obj_settings.key_return;

	// Позиции рук
	key_left_low                       = obj_settings.key_left_low;
	key_left_mid                       = obj_settings.key_left_mid;
	key_left_high                      = obj_settings.key_left_high;

	key_right_low                      = obj_settings.key_right_low;
	key_right_mid                      = obj_settings.key_right_mid;
	key_right_high                     = obj_settings.key_right_high;

	// Пальцы левой руки (без Alt)
	key_left_thumb                     = obj_settings.key_left_thumb;
	key_left_index                     = obj_settings.key_left_index;
	key_left_middle                    = obj_settings.key_left_middle;
	key_left_ring                      = obj_settings.key_left_ring;
	key_left_pinky                     = obj_settings.key_left_pinky;

	// Пальцы правой руки (без Alt)
	key_right_thumb                    = obj_settings.key_right_thumb;
	key_right_index                    = obj_settings.key_right_index;
	key_right_middle                   = obj_settings.key_right_middle;
	key_right_ring                     = obj_settings.key_right_ring;
	key_right_pinky                    = obj_settings.key_right_pinky;

	// Примыкание пальцев (с Alt) - левая рука
	key_left_attach_index              = obj_settings.key_left_attach_index;
	key_left_attach_middle             = obj_settings.key_left_attach_middle;
	key_left_attach_ring               = obj_settings.key_left_attach_ring;
	key_left_attach_pinky              = obj_settings.key_left_attach_pinky;

	// Примыкание пальцев (с Alt) - правая рука
	key_right_attach_index             = obj_settings.key_right_attach_index;
	key_right_attach_middle            = obj_settings.key_right_attach_middle;
	key_right_attach_ring              = obj_settings.key_right_attach_ring;
	key_right_attach_pinky             = obj_settings.key_right_attach_pinky;
}

#endregion

#region ===== CurrentState =====

// Текущее состояние рук
left_hand_pos                      = 1; // 0 - нижняя, 1 - умеренная, 2 - верхняя
right_hand_pos                     = 1;

old_left_hand_pos                  = -1;
old_right_hand_pos                 = -1;

// Состояния пальцев (0-разогнут, 1-согнут, 2-примкнут к большому)
left_fingers                       = [0, 0, 0, 0, 0]; // [большой, указательный, средний, безымянный, мизинец]
right_fingers                      = [0, 0, 0, 0, 0];

#endregion

#region ===== DataBaseSpells =====

global.spell_database              = ds_map_create();

// Заклинание 1: Огненный напалм
var _spell1_left                   = [1, 0, 0, 0, 0]; // Загнут большой
var _spell1_right                  = [1, 0, 0, 0, 1]; // Загнут большой и мизинец
var _spell1_key                    = fingers_to_key(_spell1_left, _spell1_right);
ds_map_add(global.spell_database, 
		  _spell1_key, 
		  "spell_firestrike");

// Заклинание 2: Яд
var _spell2_left                   = [0, 1, 0, 0, 0]; // Загнут указательный
var _spell2_right                  = [0, 0, 1, 1, 0]; // Загнут средний и безымянный
var _spell2_key                    = fingers_to_key(_spell2_left, _spell2_right);
ds_map_add(global.spell_database, 
		  _spell2_key,
          "spell_poison");

// Заклинание 3: Камнепад
var _spell3_left                   = [1, 0, 0, 2, 2]; // Сомкнут с безымянным и мизинцом
var _spell3_right                  = [1, 2, 0, 0, 0]; // Сомкнут с указательным
var _spell3_key                    = fingers_to_key(_spell3_left, _spell3_right);
ds_map_add(global.spell_database, 
		  _spell3_key,
          "spell_stonefall");

// Заклинание 4: Камнещит
var _spell4_left                   = [1, 0, 0, 1, 1]; // Загнут большой, безымянный и мизинец
var _spell4_right                  = [1, 1, 0, 0, 0]; // Загнут большой и указательный
var _spell4_key                    = fingers_to_key(_spell4_left, _spell4_right);
ds_map_add(global.spell_database, 
		  _spell4_key,
          "spell_stoneshield");

// Заклинание 5: Освежение
var _spell5_left                   = [1, 0, 0, 2, 0]; // Сомнут с безымянным
var _spell5_right                  = [-1, -1, -1, -1, -1]; // Неважно
var _spell5_key                    = fingers_to_key(_spell5_left, _spell5_right);
ds_map_add(global.spell_database, 
		  _spell5_key,
          "spell_refresher");

// Заклинание 6: Восполнение маны
var _spell6_left                   = [0, 1, 0, 0, 0]; // Загнут указательный
var _spell6_right                  = [-1, -1, -1, -1, -1]; // Неважно
var _spell6_key                    = fingers_to_key(_spell6_left, _spell6_right);
ds_map_add(global.spell_database, 
		  _spell6_key,
          "spell_quantinum_dream");

// Заклинание 7: Аура невидимости
//var _spell7_left                   = [-1, -1, -1, -1, -1]; // Неважно
//var _spell7_right                  = [1, 1, 0, 0, 2]; // Загнут указательный и сомкнут с мизинцем
//var _spell7_key                    = fingers_to_key(_spell7_left, _spell7_right);
//ds_map_add(global.spell_database, 
//		  _spell7_key,
//          "spell_invisibility_aura");

// Заклинание 8: Электромагнитное поле
var _spell8_left                   = [0, 2, 2, 0, 1]; // Согнуты только указательный и средний, и загнут мизинец
var _spell8_right                  = [1, 1, 0, 1, 0]; // Загнут большой, указательный и безымянный
var _spell8_key                    = fingers_to_key(_spell8_left, _spell8_right);
ds_map_add(global.spell_database, 
		  _spell8_key,
          "spell_emp");
		  
// Заклинание 9: Электроволна
var _spell9_left                   = [0, 0, 1, 1, 0]; // Загнут средний и безымянный
var _spell9_right                  = [0, 1, 1, 1, 1]; // Загнут указательный, средний, безымянный и мизинец
var _spell9_key                    = fingers_to_key(_spell9_left, _spell9_right);
ds_map_add(global.spell_database, 
		  _spell9_key,
          "spell_shockwave");

#endregion

#region ===== AddFunctions =====

function arrays_equal(_arr1, _arr2) {
    if (array_length(_arr1) != array_length(_arr2)) return false;
    for (var _i = 0; _i < array_length(_arr1); _i++) {
        if (_arr1[_i] != _arr2[_i]) return false;
    }
    return true;
}

function fingers_to_key(_left_arr, _right_arr) {
    var _key = "";
    for (var i = 0; i < 5; i++) {
        _key += string(_left_arr[i]);
    }
    _key += "|";
    for (var i = 0; i < 5; i++) {
        _key += string(_right_arr[i]);
    }
    return _key;
}

#endregion

alarm[0] = 10;
//alarm[1] = 60 * 10;