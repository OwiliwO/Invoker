/// @description Визуализация


draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(text_color);
draw_set_font(fnt_main);


if (!finished) {
    var _pulse = 3 + abs(sin(current_time / 500)) * 0.3 + 0.7;
    draw_text_transformed(text_x, text_y + 2, countdown_text, _pulse, _pulse, 0);
} else {
	draw_text_transformed(text_x, text_y, countdown_text, 3, 3, 0);
}

