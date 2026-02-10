/// @description Деинициализация заклинания


if (instance_exists(obj_ui) && instance_exists(obj_demons) && statistic_time_damage > 0) {
	obj_ui.statistic_hp += statistic_damage;
	obj_demons.image_blend = c_red;
	obj_demons.current_health_point -= statistic_damage;
	
	audio_play_sound(snd_spell_poison_hurt, 100, 0);
}

if (statistic_reload <= 0) instance_destroy();

statistic_reload--;
statistic_time_damage--;

alarm[0] = 60;















