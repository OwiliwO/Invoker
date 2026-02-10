		/// @description Инициализация


#region ===== StatisticOfInvoker =====

statistic_max_hp                   = 200;
statistic_max_mp                   = 120;
statistic_hp                       = 200;
statistic_mp                       = 120;

statistic_debuff_hp                = 10; // скорость понижения hp
statistic_debuff_stat_hp           = 1;  // количество понижения хп в секунду
statistic_buff_mp                  = 0;  // плюс ... единиц mp в секунду
statistic_buff_damage              = 0;  // плюс ... единиц урона к каждому атакующему заклинанию

hp_bar                             = {
			    x: 0,
			    y: 0,
			    width: 0,
			    height: 40,
			    color_fill: c_red,
			    color_bg: make_color_rgb(80, 20, 20),
			    color_border: make_color_rgb(40, 10, 10),
			    border_size: 2
};

mp_bar                             = {
			    x: 0,
			    y: 0,
			    width: 0,
			    height: 30,
			    color_fill: c_blue,
			    color_bg: make_color_rgb(20, 20, 80),
			    color_border: make_color_rgb(10, 10, 40),
			    border_size: 2
};

margin_x                           = 20;
margin_y                           = 20;
spacing                            = 5;

bar_pulse                          = false;
pulse_speed                        = 0.1;
pulse_offset                       = 0;
low_hp_threshold                   = 0.3;
low_mp_threshold                   = 0.2;


show_text                          = true;
text_color                         = c_white;
text_offset                        = 5;
font_main                          = fnt_main;


hp_change_speed                    = 0.1;
mp_change_speed                    = 0.15;
hp_display                         = 0;
mp_display                         = 0;


hp_display                         = statistic_hp;
mp_display                         = statistic_mp;


alarm[0] = statistic_debuff_hp;

#endregion

#region ===== AddFunctions =====

function draw_bar(_bar, _current, _max, _label, _is_pulsing) {
    if (_max <= 0) return;
    
    var _fill_width = (_current / _max) * _bar.width;
    _fill_width = clamp(_fill_width, 0, _bar.width);
    
    var _pulse_alpha = 1;
    var _pulse_scale = 1;
    
    if (_is_pulsing) {
        var _pulse_value = sin(pulse_offset * 5) * 0.3 + 0.7;
        _pulse_alpha = _pulse_value;
        _pulse_scale = 1 + (sin(pulse_offset * 10) * 0.05);
    }
    
    draw_set_color(_bar.color_bg);
    draw_rectangle(_bar.x, _bar.y, _bar.x + _bar.width, _bar.y + _bar.height, false);
    draw_rectangle(_bar.x, _bar.y, _bar.x + _bar.width, _bar.y + _bar.height, false);
    
    if (_fill_width > 0) {
        var _fill_color = merge_color(_bar.color_fill, c_white, 0.3 * _pulse_alpha);
        draw_set_color(_fill_color);
        
        var _scaled_width = _fill_width * _pulse_scale;
        if (_scaled_width > _bar.width) _scaled_width = _bar.width;
        
        draw_rectangle(_bar.x, _bar.y, _bar.x + _scaled_width, _bar.y + _bar.height, false);
        
        draw_set_color(merge_color(_fill_color, c_white, 0.2));
        draw_rectangle(_bar.x, _bar.y, _bar.x + _scaled_width, _bar.y + _bar.height * 0.3, false);
        
        draw_set_color(merge_color(_fill_color, c_white, 0.4));
        draw_rectangle(_bar.x, _bar.y, _bar.x + _scaled_width * 0.1, _bar.y + _bar.height, false);
    }
    
    if (show_text) {
        draw_set_color(text_color);
        draw_set_font(font_main);
        draw_set_halign(fa_left);
        draw_set_valign(fa_middle);
        
        var _text_x = _bar.x + text_offset;
        var _text_y = _bar.y + _bar.height / 2;
        
        //var _display_text = _label + " " + string(floor(_current)) + "   " + string(floor(_max));
		var _display_text = _label + " " + string(floor(_current));
		var _from_text = "/"
        draw_text(_text_x, _text_y, _display_text);
		//draw_text(_text_x + 62, _text_y + 4, _from_text);
        
        draw_set_halign(fa_left);
    }
    
    draw_set_color(c_white);
}

function merge_color(_color1, _color2, _amount) {
    var _r1 = color_get_red(_color1);
    var _g1 = color_get_green(_color1);
    var _b1 = color_get_blue(_color1);
    
    var _r2 = color_get_red(_color2);
    var _g2 = color_get_green(_color2);
    var _b2 = color_get_blue(_color2);
    
    var _r = _r1 + (_r2 - _r1) * _amount;
    var _g = _g1 + (_g2 - _g1) * _amount;
    var _b = _b1 + (_b2 - _b1) * _amount;
    
    return make_color_rgb(_r, _g, _b);
}

function set_bar_colors(_hp_fill, _hp_bg, _mp_fill, _mp_bg) {
    hp_bar.color_fill = _hp_fill;
    hp_bar.color_bg = _hp_bg;
    mp_bar.color_fill = _mp_fill;
    mp_bar.color_bg = _mp_bg;
}

function show_bars(_show) {
    visible = _show;
}

function set_bar_sizes(_hp_height, _mp_height) {
    hp_bar.height = _hp_height;
    mp_bar.height = _mp_height;
}

#endregion


