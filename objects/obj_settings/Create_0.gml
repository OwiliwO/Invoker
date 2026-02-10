/// @description Инициализация


global.game_over                   = false;

// Параметры звука
volume_of_musics                   = 0.5;
volume_of_sounds                   = 0.5;

current_track                      = -1;
next_track_timer                   = -1;
music_tracks                       = [
    msc_main_menu_moonspire,
    msc_main_menu_elven_dawn,
    msc_main_menu_darkwood_path,
    msc_main_menu_throne_of_storms
];


if (!audio_group_load(audiogroup_default)) show_debug_message("Audio Group - 'audiogroup_default' is failed to load");
if (!audio_group_load(Sound)) show_debug_message("Audio Group - 'Sound' is failed to load");

alarm[0] = 120;

// Применить заклинание
key_cast                           = vk_space;

// Открыть / закрыть книгу
key_book                           = vk_tab;

// Вернуться в меню
key_return                         = vk_escape;

// Позиции рук
key_left_low                       = ord("Q");
key_left_mid                       = ord("W");
key_left_high                      = ord("E");

key_right_low                      = ord("U");
key_right_mid                      = ord("I");
key_right_high                     = ord("O");

// Пальцы левой руки (без Alt)
key_left_thumb                     = ord("R");
key_left_index                     = ord("F");
key_left_middle                    = ord("D");
key_left_ring                      = ord("S");
key_left_pinky                     = ord("A");

// Пальцы правой руки (без Alt)
key_right_thumb                    = ord("Y");
key_right_index                    = ord("H");
key_right_middle                   = ord("J");
key_right_ring                     = ord("K");
key_right_pinky                    = ord("L");

// Примыкание пальцев (с Alt) - левая рука
key_left_attach_index              = ord("F");
key_left_attach_middle             = ord("D");
key_left_attach_ring               = ord("S");
key_left_attach_pinky              = ord("A");

// Примыкание пальцев (с Alt) - правая рука
key_right_attach_index             = ord("H");
key_right_attach_middle            = ord("J");
key_right_attach_ring              = ord("K");
key_right_attach_pinky             = ord("L");