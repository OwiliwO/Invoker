/// @description Визуализация


draw_sprite_ext(
	sprite_index, 
	current_image_index, 
	x, 
	y, 
	image_xscale, 
	image_yscale, 
	image_angle, 
	image_blend, 
	current_image_alpha);

var _old_color = draw_get_colour();
var _old_halign = draw_get_halign();

draw_set_color(c_red);
draw_set_halign(fa_center);
draw_text_transformed(x + 10, y + 200, current_health_point, 2, 2, 0);

draw_set_color(_old_color);
draw_set_halign(_old_halign);