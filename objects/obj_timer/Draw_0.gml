/// @description Визаулизация


if (global.game_over) {
    var _darkness_alpha = game_over_progress * 0.99;
    draw_set_color(c_black);
    draw_set_alpha(_darkness_alpha);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1);
}

var _total_ms = timer_duration;
var _minutes = floor(_total_ms / 60000);
var _seconds = floor((_total_ms % 60000) / 1000);
var _milliseconds = _total_ms % 1000;

var _minutes_str = "";
if (_minutes < 10) _minutes_str = "0" + string(_minutes);
else _minutes_str = string_format(_minutes, 2, 0);

var _seconds_str = "";
if (_seconds < 10) _seconds_str = "0" + string(_seconds);
else _seconds_str = string_format(_seconds, 2, 0);

var _time_string = _minutes_str + ":" + 
                   _seconds_str + ":" + 
                   string_format(_milliseconds, 3, 0);

draw_set_color(timer_color);
draw_set_alpha(timer_alpha);
draw_set_font(timer_font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (timer_scale != 1)
{
    draw_text_transformed(timer_x, timer_y, _time_string, timer_scale, timer_scale, 0);
}
else
{
    draw_text(timer_x, timer_y, _time_string);
}

if (global.game_over && return_text_alpha > 0) {
    draw_set_color(c_white);
    draw_set_alpha(return_text_alpha);
    draw_set_font(fnt_main);
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);

    var _text_y = timer_y + 80 * timer_scale;
    draw_text(timer_x, _text_y, return_text);
    
    draw_set_alpha(1);
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);



















