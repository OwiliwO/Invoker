/// @description White Demon of the Abyss


if (instance_exists(obj_invoker_system) && instance_exists(obj_ui) && instance_exists(obj_demons) && obj_demons.current_level != obj_demons.level_demon_0) {
	obj_ui.statistic_hp -= obj_demons.current_level.statistic_damage;
	
	alarm[1] = 60 * obj_demons.current_level.statistic_reload;
}