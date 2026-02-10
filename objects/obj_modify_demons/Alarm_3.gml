/// @description Ampuza


if (instance_exists(obj_invoker_system) && instance_exists(obj_ui) && instance_exists(obj_demons) && obj_demons.current_level != obj_demons.level_demon_0) {
	obj_ui.statistic_mp -= obj_demons.current_level.statistic_mana_burn;
}