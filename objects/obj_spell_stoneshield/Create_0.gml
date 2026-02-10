/// @description Инициализация


statistic_buff_max_hp              = 100;
statistic_buff_time_max_hp         = 20;
statistic_reload                   = 10;
statistic_cost                     = 20;

image_xscale                       = 1;
image_yscale                       = 1;
image_alpha                        = 1;

if (instance_exists(obj_ui)) {
	if (obj_ui.statistic_mp >= statistic_cost) {
		
		if (instance_exists(obj_modify_demons) && instance_exists(obj_demons)) {
			if (obj_modify_demons.is_debuff_helda) statistic_reload *= obj_demons.current_level.statistic_mult_reload;
		}
		
		obj_ui.statistic_max_hp += statistic_buff_max_hp;
		obj_ui.statistic_mp -= statistic_cost;
		
		audio_play_sound(snd_spell_stoneshield, 100, 0);
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
