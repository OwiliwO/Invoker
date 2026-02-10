/// @description Визуализация


draw_set_alpha(1 - fade_alpha);

if (bg_alpha > 0) {
    draw_set_color(make_color_rgb(20, 20, 30));
    draw_set_alpha(bg_alpha);
    draw_set_alpha(1 - fade_alpha);
}

draw_set_color(c_white);
draw_set_font(font_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


draw_sprite(spr_title, 0, room_width / 2, room_height / 2 - 150);

for (var _i = 0; _i < array_length(buttons); _i++) {
    var _button = buttons[_i];
    var _button_text = _button[0];
    var _button_y = _button[1];
    var _button_active = _button[3];
    
    var _button_color = c_gray;
    var _text_color = c_dkgray;
    
    if (_button_active) {
        if (_i == current_hover) {
            var _hover_factor = hover_animation;
            _button_color = merge_color(c_blue, c_dkgray, _hover_factor);
            _text_color = merge_color(c_white, c_gray, _hover_factor);
        } else {
            _button_color = make_color_rgb(40, 40, 60);
            _text_color = c_gray;
        }
    }
    
    draw_set_color(_button_color);
    
    var _button_scale = 1;
    if (_i == current_hover) {
        _button_scale = 1 + hover_animation * 0.05;
    }
    
    var _scaled_width = button_width * _button_scale;
    var _scaled_height = button_height * _button_scale;
    var _scaled_x = buttons_x + (button_width - _scaled_width) / 2;
    var _scaled_y = _button_y + (button_height - _scaled_height) / 2;
    
    
    draw_set_color(_text_color);
    draw_set_font(font_menu);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    if (_i == current_hover) {
        draw_set_alpha(0.5);
		draw_set_color(make_color_rgb(255, 255, 255));
        draw_text(room_width / 2 + 2, _button_y + button_height / 2 + 2, _button_text);
		draw_set_alpha(1);
    }
	
	//draw_sprite(spr_tip, 0, room_width / 2 + 160, room_height / 2 + 170);
    
    draw_set_color(_text_color);
    draw_text(room_width / 2, _button_y + button_height / 2, _button_text);
}

if (fade_alpha > 0) {
    draw_set_color(c_black);
    draw_set_alpha(fade_alpha);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1);
}

function merge_color(_col1, _col2, _factor) {
    var _r1 = color_get_red(_col1);
    var _g1 = color_get_green(_col1);
    var _b1 = color_get_blue(_col1);
    
    var _r2 = color_get_red(_col2);
    var _g2 = color_get_green(_col2);
    var _b2 = color_get_blue(_col2);
    
    var _r = _r1 + (_r2 - _r1) * _factor;
    var _g = _g1 + (_g2 - _g1) * _factor;
    var _b = _b1 + (_b2 - _b1) * _factor;
    
    return make_color_rgb(_r, _g, _b);
}