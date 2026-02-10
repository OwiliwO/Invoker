/// @description Инициализация


fade_alpha                         = 1;
fade_speed                         = 0.05;
fade_out                           = false;
target_room                        = noone;

button_height                      = 120;
button_width                       = 300;
button_spacing                     = 10;

buttons_x                          = room_width / 4 + button_width / 2;
buttons_start_y                    = room_height / 2 - 100;

buttons                            = [
    ["New Hame", buttons_start_y, MainProcess, true],
    ["Training", buttons_start_y + button_height + button_spacing, MainProcess_Training, true]
];

hover_animation                    = 0;
hover_speed                        = 0.15;
current_hover                      = -1;
is_hover_audio                     = false;

font_menu                          = fnt_main;
font_size                          = 24;

menu_bg                            = -1;
bg_alpha                           = 0;