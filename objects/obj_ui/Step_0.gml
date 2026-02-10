/// @description Итерация


#region ===== ProcessVisualization =====

if (hp_display != statistic_hp) {
    hp_display = lerp(hp_display, statistic_hp, hp_change_speed);
    if (abs(hp_display - statistic_hp) < 0.5) {
        hp_display = statistic_hp;
    }
}

if (mp_display != statistic_mp) {
    mp_display = lerp(mp_display, statistic_mp, mp_change_speed);
    if (abs(mp_display - statistic_mp) < 0.5) {
        mp_display = statistic_mp;
    }
}

pulse_offset += pulse_speed;

if (statistic_hp > 0 && (statistic_hp / statistic_max_hp) <= low_hp_threshold) {
    bar_pulse = true;
} else if (statistic_mp > 0 && (statistic_mp / statistic_max_mp) <= low_mp_threshold) {
    bar_pulse = true;
} else {
    bar_pulse = false;
}

if (statistic_hp <= 0) {
    hp_display = 0;
	statistic_hp = 0;
	
	if (!global.game_over && instance_exists(obj_timer)) {
        global.game_over = true;
		
		instance_destroy();
    }
}
if (statistic_debuff_hp < 2) {
	statistic_debuff_stat_hp += 2;
	statistic_debuff_hp = 2;
}
if (statistic_hp > statistic_max_hp) {
    hp_display = statistic_max_hp;
	statistic_hp = statistic_max_hp;
}
if (statistic_mp <= 0) {
    mp_display = 0;
	statistic_mp = 0;
}
if (statistic_mp > statistic_max_mp) {
    mp_display = statistic_max_mp;
	statistic_mp = statistic_max_mp;
}

#endregion

