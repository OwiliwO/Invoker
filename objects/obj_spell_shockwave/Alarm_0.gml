/// @description Деинициализация заклинания


if (statistic_reload <= 0) {
	instance_destroy();
}

if (statistic_duration == 0) {
	if (instance_exists(obj_demons)) {
		obj_demons.current_level = statistic_current_level;
		if (instance_exists(obj_modify_demons)) obj_modify_demons.alarm[0] = 1;
		alarm[1] = 10;
	}
}

statistic_reload--;
statistic_duration--;

alarm[0] = 60;















