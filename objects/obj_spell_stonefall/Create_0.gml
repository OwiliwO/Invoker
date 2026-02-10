/// @description Инициализация


statistic_damage                   = 50;
statistic_reload                   = 10;
statistic_cost                     = 20;

is_hurt                            = true;

image_xscale                       = 2;
image_yscale                       = 2;
image_angle                        = 0;

if (instance_exists(obj_ui)) {
	if (obj_ui.statistic_mp >= statistic_cost) {
		
		if (instance_exists(obj_modify_demons) && instance_exists(obj_demons)) {
			if (obj_modify_demons.is_debuff_helda) statistic_reload *= obj_demons.current_level.statistic_mult_reload;
		}
		
		statistic_damage += obj_ui.statistic_buff_damage;
		obj_ui.statistic_hp += statistic_damage;
		obj_ui.statistic_mp -= statistic_cost;
		obj_demons.current_health_point -= statistic_damage;
		
		audio_play_sound(snd_spell_stonefall, 100, 0);
	} else {
		if (instance_exists(obj_hands)) {
			with (obj_hands) {
				is_fail_cast = true;
				image_index = 0;
			}
		}
		
		instance_destroy();
	}
}


alarm[0]                           = 1;
