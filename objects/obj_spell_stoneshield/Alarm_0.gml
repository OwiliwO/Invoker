/// @description Деинициализация заклинания


if (statistic_reload <= 0) instance_destroy();
if (statistic_buff_time_max_hp <= 0) {
	if (instance_exists(obj_ui)) {
		obj_ui.statistic_max_hp -= statistic_buff_max_hp;
	}
}

statistic_reload--;
statistic_buff_time_max_hp--;

alarm[0] = 60;















