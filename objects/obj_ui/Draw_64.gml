/// @description Визуализация


var _screen_width = display_get_gui_width();
var _screen_height = display_get_gui_height();

hp_bar.width = _screen_width - (margin_x * 2);
hp_bar.x = margin_x;
hp_bar.y = _screen_height - margin_y - hp_bar.height;

mp_bar.width = _screen_width - (margin_x * 2);
mp_bar.x = margin_x;
mp_bar.y = hp_bar.y - spacing - mp_bar.height;

var _is_pulsing_hp = bar_pulse && (statistic_hp / statistic_max_hp) <= low_hp_threshold;
var _is_pulsing_mp = bar_pulse && (statistic_mp / statistic_max_mp) <= low_hp_threshold;

draw_bar(hp_bar, hp_display, statistic_max_hp, "", _is_pulsing_hp);
draw_bar(mp_bar, mp_display, statistic_max_mp, "", _is_pulsing_mp);
