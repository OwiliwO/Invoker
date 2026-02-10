/// @description Инициализация


statistic_damage                   = 10;
statistic_reload                   = 12;
statistic_duration                 = 5;
statistic_cost                     = 25;
statistic_current_level            = -1;

flash_sprites                      = [spr_spell_shockwave_1, spr_spell_shockwave_2, spr_spell_shockwave_3];
flashes                            = [];
flash_chance                       = 0.2;
max_flashes                        = 20;

image_speed                        = 1;

if (instance_exists(obj_ui)) {
	if (obj_ui.statistic_mp >= statistic_cost) {
		
		if (instance_exists(obj_modify_demons) && instance_exists(obj_demons)) {
			if (obj_modify_demons.is_debuff_helda) statistic_reload *= obj_demons.current_level.statistic_mult_reload;
			obj_demons.image_blend = c_red;
		}
		
		statistic_damage += obj_ui.statistic_buff_damage;
		obj_ui.statistic_hp += statistic_damage;
		obj_ui.statistic_mp -= statistic_cost;
		obj_demons.current_health_point -= statistic_damage;
	
		if (instance_exists(obj_demons)) {
			statistic_current_level = obj_demons.current_level;
			obj_demons.current_level = obj_demons.level_demon_0;
			
			if (instance_exists(obj_modify_demons)) obj_modify_demons.alarm[0] = 1;
			alarm[1] = 10;
		}
		audio_play_sound(snd_spell_shockwave, 100, 0);
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
