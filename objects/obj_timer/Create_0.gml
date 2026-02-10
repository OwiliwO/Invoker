/// @description Инициализация


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







