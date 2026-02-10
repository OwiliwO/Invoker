/// @description Итерация


if (timer_running && !timer_paused)
{
    current_times = get_timer();
    var _elapsed_microseconds = current_times - timer_start;
    timer_duration = pause_offset + (_elapsed_microseconds / 1000);
}


if (global.game_over && instance_exists(obj_settings)) {
    timer_paused = true;
	if (!game_over_audio) {
		audio_play_sound(snd_ambient_end_round, 0, false);
		
		game_over_audio = true;
	}
	
	if (game_over_progress < 1) {
        game_over_progress += 1 / game_over_duration;
    } else {
        game_over_progress = 1;
        return_text_alpha = min(return_text_alpha + 0.02, 1);
        
        if (keyboard_check_pressed(obj_settings.key_return)) {
            global.game_over = false;
			reupdate_room();
			room_goto(MainMenu);
        }
    }
    
    timer_x = lerp(original_timer_x, target_timer_x, game_over_progress);
    timer_y = lerp(original_timer_y, target_timer_y, game_over_progress);
    timer_scale = lerp(original_timer_scale, target_timer_scale, game_over_progress);
    
    timer_running = false;
}

