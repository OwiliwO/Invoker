/// @description Итерация


if (!fade_out) {
    fade_alpha -= fade_speed;
    if (fade_alpha <= 0) {
        fade_alpha = 0;
    }
    
    bg_alpha += fade_speed / 2;
    if (bg_alpha > 0.7) bg_alpha = 0.7;
}

if (fade_out) {
    fade_alpha += fade_speed;
    if (fade_alpha >= 1) {
        fade_alpha = 1;
    }
    
    bg_alpha -= fade_speed;
    if (bg_alpha < 0) bg_alpha = 0;
}

if (current_hover >= 0) {
    hover_animation = min(hover_animation + hover_speed, 1);
} else {
    hover_animation = max(hover_animation - hover_speed, 0);
}

var _mx = mouse_x;
var _my = mouse_y;

current_hover = -1;

for (var _i = 0; _i < array_length(buttons); _i++) {
    var _button = buttons[_i];
    var _button_y = _button[1];
    
    if (_mx >= buttons_x && _mx <= buttons_x + button_width &&
        _my >= _button_y && _my <= _button_y + button_height) {
        current_hover = _i;
		
        break;
    }
}

if (current_hover != -1) {
	if (!is_hover_audio) { 
		audio_play_sound(snd_ui_hover_1, 100, 0); 
		is_hover_audio = true; 
	}
} else {
	is_hover_audio = false;
}


if (mouse_check_button_pressed(mb_left) && !fade_out) {
    for (var _i = 0; _i < array_length(buttons); _i++) {
        var _button = buttons[_i];
        var _button_y = _button[1];
        
        if (_mx >= buttons_x && _mx <= buttons_x + button_width &&
            _my >= _button_y && _my <= _button_y + button_height) {
            
            if (_button[3]) {
                fade_out = true;
                target_room = _button[2];
                audio_play_sound(snd_ui_click, 100, 0);
				
                alarm[0] = 5;
                buttons[_i][3] = false;
            }
            break;
        }
    }
}