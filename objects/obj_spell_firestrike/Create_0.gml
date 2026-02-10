/// @description Инициализация


statistic_damage                   = 30;
statistic_reload                   = 5;
statistic_cost                     = 10;

image_xscale                       = 1;
image_yscale                       = 1;
image_alpha                        = 1;
image_angle                        = 0;

sounds_tracks                       = [
    snd_spell_firestrike_1,
    snd_spell_firestrike_2,
    snd_spell_firestrike_3
];


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
		
		audio_play_sound(sounds_tracks[irandom(2)], 100, 0);
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
