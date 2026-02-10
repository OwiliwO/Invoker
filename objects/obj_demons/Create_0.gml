/// @description Инициализация


start_x                            = x;
start_y                            = y;
levitation_height                  = 10 + random(5);
levitation_speed                   = 0.5 + random(0.5);
levitation_time                    = 0;
levitation_offset                  = random(360);

current_image_index                = image_index;
current_image_alpha                = image_alpha;
current_health_point               = 0;
current_max_health_point           = 0;

shake_timer                        = 0;

is_killing_demon                   = false;

level_demon_0                      = {
				name_of_demon: "None",
				image_alpha: 0.5	
};
level_demon_1                      = {
			    name_of_demon: "White Demon of the Abyss",
				image_index: 0,
				image_alpha: 1,
				statistic_damage: 10,
				statistic_reload: 5,
				statistic_hp: 110
			    
};

level_demon_2                      = {
				name_of_demon: "Kabidzi",
				image_index: 1,
				image_alpha: 1,
				statistic_forgotten_spells: [],
				stitistic_count_forgotten_spells: 2,
				statistic_hp: 100
};

level_demon_3                      = {
				name_of_demon: "Ampuza",
				image_index: 2,
				image_alpha: 1,
				statistic_mana_burn: 100,
				statistic_hp: 140
};

level_demon_4                      = {
				name_of_demon: "Nixa",
				image_index: 3,
				image_alpha: 1,
				statistic_index_finger: 0,
				statistic_hp: 130
};

level_demon_5                      = {
				name_of_demon: "Lamashtu",
				image_index: 4,
				image_alpha: 1,
				statistic_hp: 90
};

level_demon_6                      = {
				name_of_demon: "Helda",
				image_index: 5,
				image_alpha: 1,
				statistic_mult_reload: 2,
				statistic_hp: 110
};

level_demon_7                      = {
				name_of_demon: "Mania",
				image_index: 6,
				image_alpha: 1,
				statistic_hp: 60
};

current_level                      = level_demon_1;
old_level                          = level_demon_0;
remaining_levels                   = [1, 2, 3, 4, 5, 6, 7];
if (current_level != level_demon_0) current_health_point = current_level.statistic_hp;
if (current_level != level_demon_0) current_max_health_point = current_level.statistic_hp;
limit_change_level                 = 30;

if (!instance_exists(obj_modify_demons)) instance_create_layer(0, 0, "Instances", obj_modify_demons);

alarm[0] = 60 * limit_change_level;
//alarm[1] = 60 * 2;
