/// @description Инициализация


statistic_add_mana                 = 15;
statistic_reload                   = 2;

image_speed                        = 1;


if (instance_exists(obj_ui)) {
	
	if (instance_exists(obj_modify_demons) && instance_exists(obj_demons)) {
		if (obj_modify_demons.is_debuff_helda) statistic_reload *= obj_demons.current_level.statistic_mult_reload;
	}
	
	obj_ui.statistic_mp += statistic_add_mana;
	
	audio_play_sound(snd_spell_quantinum_dream, 100, 0);
}


alarm[0]                           = 1;
