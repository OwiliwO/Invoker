/// @description Визуализация


if (!instance_exists(obj_book)) {
	var _old_halign = draw_get_halign();
	draw_set_halign(fa_left);
	draw_set_font(fnt_main);
	
	draw_text(10, 20, "Left hand: ");
	if (left_hand_pos == 0) draw_text(160, 20, "Lower position");
	if (left_hand_pos == 1) draw_text(160, 20, "Normal position");
	if (left_hand_pos == 2) draw_text(160, 20, "Higher position");
	
	draw_text(10, 60, "Right hand: ");
	if (right_hand_pos == 0) draw_text(160, 60, "Lower position");
	if (right_hand_pos == 1) draw_text(160, 60, "Normal position");
	if (right_hand_pos == 2) draw_text(160, 60, "Higher position");
	
	draw_text(10, 100, "Fingers of left hand: " + string(left_fingers));
	draw_text(10, 140, "Fingers of right hand: " + string(right_fingers));
	
	draw_set_halign(_old_halign);
}

