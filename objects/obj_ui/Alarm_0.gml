/// @description Итерация понижения здоровья


statistic_hp -= statistic_debuff_stat_hp;
if (statistic_buff_mp != 0) statistic_mp += statistic_buff_mp;

alarm[0] = statistic_debuff_hp;

