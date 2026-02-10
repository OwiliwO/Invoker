/// @description Визуализация


if (instance_exists(obj_invoker_system) && !is_success_cast && !is_fail_cast) {
	if (image_xscale == 1) {
		if (arrays_equal(obj_invoker_system.left_fingers, [0, 0, 0, 0, 0])) {
			if (obj_invoker_system.left_hand_pos == 0) draw_sprite_ext(spr_hands_lower, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
			if (obj_invoker_system.left_hand_pos == 1) draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
			if (obj_invoker_system.left_hand_pos == 2) draw_sprite_ext(spr_hands_higher, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
		} else {
			if (obj_invoker_system.left_hand_pos == 0) {
				draw_sprite_ext(spr_hands_lower_composite, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

				if (obj_invoker_system.left_fingers[4] == 0) draw_sprite_ext(spr_hands_lower_composite, 13, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.left_fingers[4] == 1) draw_sprite_ext(spr_hands_lower_composite, 14, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.left_fingers[4] == 2) draw_sprite_ext(spr_hands_lower_composite, 15, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				
				if (obj_invoker_system.left_fingers[3] == 0) draw_sprite_ext(spr_hands_lower_composite, 10, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.left_fingers[3] == 1) draw_sprite_ext(spr_hands_lower_composite, 11, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.left_fingers[3] == 2) draw_sprite_ext(spr_hands_lower_composite, 12, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				
				if (obj_invoker_system.left_fingers[2] == 0) draw_sprite_ext(spr_hands_lower_composite, 7, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.left_fingers[2] == 1) draw_sprite_ext(spr_hands_lower_composite, 8, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.left_fingers[2] == 2) draw_sprite_ext(spr_hands_lower_composite, 9, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				
				if (obj_invoker_system.left_fingers[1] == 0) draw_sprite_ext(spr_hands_lower_composite, 4, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.left_fingers[1] == 1) draw_sprite_ext(spr_hands_lower_composite, 5, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.left_fingers[1] == 2) draw_sprite_ext(spr_hands_lower_composite, 6, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				
				if (obj_invoker_system.left_fingers[1] == 2 || obj_invoker_system.left_fingers[2] == 2 || obj_invoker_system.left_fingers[3] == 2 || obj_invoker_system.left_fingers[4] == 2) {
					draw_sprite_ext(spr_hands_lower_composite, 3, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				} else {
					if (obj_invoker_system.left_fingers[0] == 0) draw_sprite_ext(spr_hands_lower_composite, 1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
					if (obj_invoker_system.left_fingers[0] == 1) draw_sprite_ext(spr_hands_lower_composite, 2, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				}
			}
			if (obj_invoker_system.left_hand_pos == 1) {
				draw_sprite_ext(spr_hands_normal_composite, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

				if (obj_invoker_system.left_fingers[4] == 0) draw_sprite_ext(spr_hands_normal_composite, 13, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.left_fingers[4] == 1) draw_sprite_ext(spr_hands_normal_composite, 14, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.left_fingers[4] == 2) draw_sprite_ext(spr_hands_normal_composite, 15, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				
				if (obj_invoker_system.left_fingers[3] == 0) draw_sprite_ext(spr_hands_normal_composite, 10, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.left_fingers[3] == 1) draw_sprite_ext(spr_hands_normal_composite, 11, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.left_fingers[3] == 2) draw_sprite_ext(spr_hands_normal_composite, 12, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				
				if (obj_invoker_system.left_fingers[2] == 0) draw_sprite_ext(spr_hands_normal_composite, 7, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.left_fingers[2] == 1) draw_sprite_ext(spr_hands_normal_composite, 8, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.left_fingers[2] == 2) draw_sprite_ext(spr_hands_normal_composite, 9, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				
				if (obj_invoker_system.left_fingers[1] == 0) draw_sprite_ext(spr_hands_normal_composite, 4, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.left_fingers[1] == 1) draw_sprite_ext(spr_hands_normal_composite, 5, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.left_fingers[1] == 2) draw_sprite_ext(spr_hands_normal_composite, 6, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				
				if (obj_invoker_system.left_fingers[1] == 2 || obj_invoker_system.left_fingers[2] == 2 || obj_invoker_system.left_fingers[3] == 2 || obj_invoker_system.left_fingers[4] == 2) {
					draw_sprite_ext(spr_hands_normal_composite, 3, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				} else {
					if (obj_invoker_system.left_fingers[0] == 0) draw_sprite_ext(spr_hands_normal_composite, 1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
					if (obj_invoker_system.left_fingers[0] == 1) draw_sprite_ext(spr_hands_normal_composite, 2, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				}
			}
			if (obj_invoker_system.left_hand_pos == 2) {
				draw_sprite_ext(spr_hands_higher_composite, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

				if (obj_invoker_system.left_fingers[4] == 0) draw_sprite_ext(spr_hands_higher_composite, 13, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.left_fingers[4] == 1) draw_sprite_ext(spr_hands_higher_composite, 14, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.left_fingers[4] == 2) draw_sprite_ext(spr_hands_higher_composite, 15, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				
				if (obj_invoker_system.left_fingers[3] == 0) draw_sprite_ext(spr_hands_higher_composite, 10, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.left_fingers[3] == 1) draw_sprite_ext(spr_hands_higher_composite, 11, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.left_fingers[3] == 2) draw_sprite_ext(spr_hands_higher_composite, 12, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				
				if (obj_invoker_system.left_fingers[2] == 0) draw_sprite_ext(spr_hands_higher_composite, 7, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.left_fingers[2] == 1) draw_sprite_ext(spr_hands_higher_composite, 8, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.left_fingers[2] == 2) draw_sprite_ext(spr_hands_higher_composite, 9, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				
				if (obj_invoker_system.left_fingers[1] == 0) draw_sprite_ext(spr_hands_higher_composite, 4, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.left_fingers[1] == 1) draw_sprite_ext(spr_hands_higher_composite, 5, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.left_fingers[1] == 2) draw_sprite_ext(spr_hands_higher_composite, 6, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				
				if (obj_invoker_system.left_fingers[1] == 2 || obj_invoker_system.left_fingers[2] == 2 || obj_invoker_system.left_fingers[3] == 2 || obj_invoker_system.left_fingers[4] == 2) {
					draw_sprite_ext(spr_hands_higher_composite, 3, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				} else {
					if (obj_invoker_system.left_fingers[0] == 0) draw_sprite_ext(spr_hands_higher_composite, 1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
					if (obj_invoker_system.left_fingers[0] == 1) draw_sprite_ext(spr_hands_higher_composite, 2, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				}
			}
		}
	}
	
	if (image_xscale == -1) {
		if (arrays_equal(obj_invoker_system.right_fingers, [0, 0, 0, 0, 0])) {
			if (obj_invoker_system.right_hand_pos == 0) draw_sprite_ext(spr_hands_lower, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
			if (obj_invoker_system.right_hand_pos == 1) draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
			if (obj_invoker_system.right_hand_pos == 2) draw_sprite_ext(spr_hands_higher, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
		} else {
			if (obj_invoker_system.right_hand_pos == 0) {
				draw_sprite_ext(spr_hands_lower_composite, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

				if (obj_invoker_system.right_fingers[4] == 0) draw_sprite_ext(spr_hands_lower_composite, 13, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.right_fingers[4] == 1) draw_sprite_ext(spr_hands_lower_composite, 14, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.right_fingers[4] == 2) draw_sprite_ext(spr_hands_lower_composite, 15, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				
				if (obj_invoker_system.right_fingers[3] == 0) draw_sprite_ext(spr_hands_lower_composite, 10, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.right_fingers[3] == 1) draw_sprite_ext(spr_hands_lower_composite, 11, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.right_fingers[3] == 2) draw_sprite_ext(spr_hands_lower_composite, 12, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				
				if (obj_invoker_system.right_fingers[2] == 0) draw_sprite_ext(spr_hands_lower_composite, 7, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.right_fingers[2] == 1) draw_sprite_ext(spr_hands_lower_composite, 8, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.right_fingers[2] == 2) draw_sprite_ext(spr_hands_lower_composite, 9, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				
				if (obj_invoker_system.right_fingers[1] == 0) draw_sprite_ext(spr_hands_lower_composite, 4, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.right_fingers[1] == 1) draw_sprite_ext(spr_hands_lower_composite, 5, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.right_fingers[1] == 2) draw_sprite_ext(spr_hands_lower_composite, 6, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				
				if (obj_invoker_system.right_fingers[1] == 2 || obj_invoker_system.right_fingers[2] == 2 || obj_invoker_system.right_fingers[3] == 2 || obj_invoker_system.right_fingers[4] == 2) {
					draw_sprite_ext(spr_hands_lower_composite, 3, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				} else {
					if (obj_invoker_system.right_fingers[0] == 0) draw_sprite_ext(spr_hands_lower_composite, 1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
					if (obj_invoker_system.right_fingers[0] == 1) draw_sprite_ext(spr_hands_lower_composite, 2, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				}
			}
			if (obj_invoker_system.right_hand_pos == 1) {
				draw_sprite_ext(spr_hands_normal_composite, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

				if (obj_invoker_system.right_fingers[4] == 0) draw_sprite_ext(spr_hands_normal_composite, 13, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.right_fingers[4] == 1) draw_sprite_ext(spr_hands_normal_composite, 14, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.right_fingers[4] == 2) draw_sprite_ext(spr_hands_normal_composite, 15, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				
				if (obj_invoker_system.right_fingers[3] == 0) draw_sprite_ext(spr_hands_normal_composite, 10, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.right_fingers[3] == 1) draw_sprite_ext(spr_hands_normal_composite, 11, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.right_fingers[3] == 2) draw_sprite_ext(spr_hands_normal_composite, 12, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				
				if (obj_invoker_system.right_fingers[2] == 0) draw_sprite_ext(spr_hands_normal_composite, 7, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.right_fingers[2] == 1) draw_sprite_ext(spr_hands_normal_composite, 8, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.right_fingers[2] == 2) draw_sprite_ext(spr_hands_normal_composite, 9, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				
				if (obj_invoker_system.right_fingers[1] == 0) draw_sprite_ext(spr_hands_normal_composite, 4, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.right_fingers[1] == 1) draw_sprite_ext(spr_hands_normal_composite, 5, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.right_fingers[1] == 2) draw_sprite_ext(spr_hands_normal_composite, 6, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				
				if (obj_invoker_system.right_fingers[1] == 2 || obj_invoker_system.right_fingers[2] == 2 || obj_invoker_system.right_fingers[3] == 2 || obj_invoker_system.right_fingers[4] == 2) {
					draw_sprite_ext(spr_hands_normal_composite, 3, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				} else {
					if (obj_invoker_system.right_fingers[0] == 0) draw_sprite_ext(spr_hands_normal_composite, 1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
					if (obj_invoker_system.right_fingers[0] == 1) draw_sprite_ext(spr_hands_normal_composite, 2, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				}
			}
			if (obj_invoker_system.right_hand_pos == 2) {
				draw_sprite_ext(spr_hands_higher_composite, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

				if (obj_invoker_system.right_fingers[4] == 0) draw_sprite_ext(spr_hands_higher_composite, 13, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.right_fingers[4] == 1) draw_sprite_ext(spr_hands_higher_composite, 14, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.right_fingers[4] == 2) draw_sprite_ext(spr_hands_higher_composite, 15, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				
				if (obj_invoker_system.right_fingers[3] == 0) draw_sprite_ext(spr_hands_higher_composite, 10, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.right_fingers[3] == 1) draw_sprite_ext(spr_hands_higher_composite, 11, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.right_fingers[3] == 2) draw_sprite_ext(spr_hands_higher_composite, 12, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				
				if (obj_invoker_system.right_fingers[2] == 0) draw_sprite_ext(spr_hands_higher_composite, 7, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.right_fingers[2] == 1) draw_sprite_ext(spr_hands_higher_composite, 8, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.right_fingers[2] == 2) draw_sprite_ext(spr_hands_higher_composite, 9, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				
				if (obj_invoker_system.right_fingers[1] == 0) draw_sprite_ext(spr_hands_higher_composite, 4, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.right_fingers[1] == 1) draw_sprite_ext(spr_hands_higher_composite, 5, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				if (obj_invoker_system.right_fingers[1] == 2) draw_sprite_ext(spr_hands_higher_composite, 6, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				
				if (obj_invoker_system.right_fingers[1] == 2 || obj_invoker_system.right_fingers[2] == 2 || obj_invoker_system.right_fingers[3] == 2 || obj_invoker_system.right_fingers[4] == 2) {
					draw_sprite_ext(spr_hands_higher_composite, 3, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				} else {
					if (obj_invoker_system.right_fingers[0] == 0) draw_sprite_ext(spr_hands_higher_composite, 1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
					if (obj_invoker_system.right_fingers[0] == 1) draw_sprite_ext(spr_hands_higher_composite, 2, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
				}
			}
		}
	}
	
} else {
	draw_self();
}

















