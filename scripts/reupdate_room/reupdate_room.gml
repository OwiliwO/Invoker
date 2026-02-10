

function reupdate_room(){
	with (obj_timer) {
		timer_start                        = get_timer();
		timer_paused                       = false;
		pause_offset                       = 0;
		timer_running                      = true;
		timer_duration                     = 0;
		current_times                      = 0.0

		timer_x                            = room_width / 2;
		timer_y                            = 50;
		timer_color                        = c_red;
		timer_font                         = fnt_main;
		timer_scale                        = 2;
		timer_alpha                        = 1;
		show_milliseconds                  = true;

		show_milliseconds                  = true;


		total_minutes_passed               = 0;
		last_minute_time                   = 0;
		last_30_seconds_check              = -1;
		thirty_seconds_event_triggered     = false;
		last_minute_check                  = -1;
		minute_event_triggered             = false;


		game_over_audio                    = false;
		game_over                          = false;
		game_over_progress                 = 0;
		game_over_duration                 = 90;

		original_timer_x                   = room_width / 2;
		original_timer_y                   = 50;
		original_timer_scale               = 2;

		target_timer_x                     = room_width / 2;
		target_timer_y                     = room_height / 2 - 50;
		target_timer_scale                 = 3;

		return_text                        = "Press Esc to return";
		return_text_alpha                  = 0;
	}
	
	with (obj_ui) {
		statistic_max_hp                   = 200;
		statistic_max_mp                   = 120;
		statistic_hp                       = 200;
		statistic_mp                       = 120;

		statistic_debuff_hp                = 10; // скорость понижения hp
		statistic_debuff_stat_hp           = 1;  // количество понижения хп в секунду
		statistic_buff_mp                  = 0;  // плюс ... единиц mp в секунду
		statistic_buff_damage              = 0;  // плюс ... единиц урона к каждому атакующему заклинанию

		hp_bar                             = {
					    x: 0,
					    y: 0,
					    width: 0,
					    height: 40,
					    color_fill: c_red,
					    color_bg: make_color_rgb(80, 20, 20),
					    color_border: make_color_rgb(40, 10, 10),
					    border_size: 2
		};

		mp_bar                             = {
					    x: 0,
					    y: 0,
					    width: 0,
					    height: 30,
					    color_fill: c_blue,
					    color_bg: make_color_rgb(20, 20, 80),
					    color_border: make_color_rgb(10, 10, 40),
					    border_size: 2
		};

		margin_x                           = 20;
		margin_y                           = 20;
		spacing                            = 5;

		bar_pulse                          = false;
		pulse_speed                        = 0.1;
		pulse_offset                       = 0;
		low_hp_threshold                   = 0.3;
		low_mp_threshold                   = 0.2;


		show_text                          = true;
		text_color                         = c_white;
		text_offset                        = 5;
		font_main                          = fnt_main;


		hp_change_speed                    = 0.1;
		mp_change_speed                    = 0.15;
		hp_display                         = 0;
		mp_display                         = 0;


		hp_display                         = statistic_hp;
		mp_display                         = statistic_mp;
	}

	with (obj_demons) {
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
		
		current_level                      = level_demon_1;
		old_level                          = level_demon_0;
		remaining_levels                   = [1, 2, 3, 4, 5, 6, 7];
		if (current_level != level_demon_0) current_health_point = current_level.statistic_hp;
		if (current_level != level_demon_0) current_max_health_point = current_level.statistic_hp;
		limit_change_level                 = 30;
	}
}