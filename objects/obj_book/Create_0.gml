/// @description Инициализация


y                                  = room_height + sprite_height;


start_y                            = y;
levitation_height                  = 5 + random(2);
levitation_speed                   = 0.2 + random(0.1);
levitation_time                    = 0;
levitation_offset                  = random(360);

shake_timer                        = 0;

target_y                           = 64 * 4.4;
return_time                        = 90;
pause_time                         = 30;
destroy_time                       = 60;

timer                              = 0;
state                              = "rising";

current_page                       = 0;
pages                              = [];
page_elements                      = [];
page_backgrounds                   = [];
font_default                       = fnt_main;
font_descrip                       = fnt_description;
page_transition                    = 0;
page_transition_speed              = 0.1;
page_turn_cooldown                 = 0;
page_margin_left                   = 20;
page_margin_top                    = 20;
page_margin_right                  = 20;
page_margin_bottom                 = 20;
max_pages                          = 6;

page_width                         = sprite_width - page_margin_left - page_margin_right;
page_height                        = sprite_height - page_margin_top - page_margin_bottom;


rise_speed = (start_y - target_y) / return_time;
fall_speed = (room_height - target_y + sprite_height) / destroy_time;


for (var i = 0; i < max_pages; i++) {
    pages[i] = 0;
    page_elements[i] = [];
    page_backgrounds[i] = -1;
}

add_page();
add_text(0, "right arrow ->", 648, 40, c_black, font_descrip, fa_left);

add_text(0, "I wrote this book for you, my fellow ", 82, 80, c_black, font_descrip, fa_left);
add_text(0, "ill-fated friend. Your path will be", 82, 102 + 4, c_black, font_descrip, fa_left);
add_text(0, "arduous, and this tome is the key to", 82, 124 + 4, c_black, font_descrip, fa_left);
add_text(0, "gaining knowledge and power.", 82, 146 + 4, c_black, font_descrip, fa_left);

add_text(0, "The foolish king has sent you, much ", 82, 212 + 4, c_black, font_descrip, fa_left);
add_text(0, "like he sent me, to be devoured by the", 82, 234 + 4, c_black, font_descrip, fa_left);
add_text(0, "terrible Abyss. Should you die, as ", 82, 256 + 4, c_black, font_descrip, fa_left);
add_text(0, "you inevitably will sooner or later, ", 82, 278 + 4, c_black, font_descrip, fa_left);
add_text(0, "another just like you shall take your ", 82, 300 + 4, c_black, font_descrip, fa_left);
add_text(0, "place.", 82, 322 + 4, c_black, font_descrip, fa_left);

add_text(0, "Therefore, your task is to hold back", 442, 80, c_black, font_descrip, fa_left);
add_text(0, "the forces of the Abyss until your ", 442, 102 + 4, c_black, font_descrip, fa_left);
add_text(0, "hands grow numb. Forget everything ", 442, 124 + 4, c_black, font_descrip, fa_left);
add_text(0, "they taught you at the academy ", 442, 146 + 4, c_black, font_descrip, fa_left);
add_text(0, "word-bound miracles hold no power ", 442, 168 + 4, c_black, font_descrip, fa_left);
add_text(0, "here. You must rely on the ancient ", 442, 190 + 4, c_black, font_descrip, fa_left);
add_text(0, "art of 'Spellweaving Hands.' The ", 442, 212 + 4, c_black, font_descrip, fa_left);
add_text(0, "varied positions of your hands and ", 442, 234 + 4, c_black, font_descrip, fa_left);
add_text(0, "fingers will weave spells capable of", 442, 256 + 4, c_black, font_descrip, fa_left);
add_text(0, "withstanding the Abyss's onslaught.", 442, 300 + 4, c_black, font_descrip, fa_left);

add_text(0, "All spell specifications ", 442, 344 + 4, c_black, font_descrip, fa_left);
add_text(0, "I have described further on: ", 442, 366 + 4, c_black, font_descrip, fa_left);


add_page();
add_text(1, "<- left arrow", 82, 40, c_black, font_descrip, fa_left);
add_text(1, "right arrow ->", 648, 40, c_black, font_descrip, fa_left);

add_text(1, "Left hand stances: ", 82, 80, c_black, font_descrip, fa_left);
add_text(1, "Q, W, E", 288, 80, c_purple, font_default, fa_left);
add_text(1, "Right hand stances: ", 82, 112 + 4, c_black, font_descrip, fa_left);
add_text(1, "U, I, O", 288, 112 + 4, c_purple, font_default, fa_left);
add_text(1, "Left / Right fingers: ", 82, 144 + 4, c_black, font_descrip, fa_left);
add_text(1, "Thumb: ", 152, 176 + 4, c_black, font_descrip, fa_left);
add_text(1, "R / Y", 288, 176 + 4, c_purple, font_default, fa_left);
add_text(1, "Index: ", 152, 208 + 4, c_black, font_descrip, fa_left);
add_text(1, "F / H", 288, 208 + 4, c_purple, font_default, fa_left);
add_text(1, "Middle: ", 152, 240 + 4, c_black, font_descrip, fa_left);
add_text(1, "D / J", 288, 240 + 4, c_purple, font_default, fa_left);
add_text(1, "Ring: ", 152, 272 + 4, c_black, font_descrip, fa_left);
add_text(1, "S / K", 288, 272 + 4, c_purple, font_default, fa_left);
add_text(1, "Little: ", 152, 304 + 4, c_black, font_descrip, fa_left);
add_text(1, "A / L", 288, 304 + 4, c_purple, font_default, fa_left);
add_text(1, "Closed fingers: ", 152, 336 + 4, c_black, font_descrip, fa_left);
add_text(1, "Alt", 288, 336 + 4, c_purple, font_default, fa_left);
add_text(1, "Cast: ", 152, 392 + 4, c_black, font_descrip, fa_left);
add_text(1, "Space", 288, 392 + 4, c_purple, font_default, fa_left);

add_text(1, "Firesrtike", 442, 80, c_black, font_default, fa_left);
add_text(1, "R-Y-L", 648, 80, c_purple, font_default, fa_left);
add_text(1, "Instant damage with fire napalm", 442, 112 + 4, c_black, font_descrip, fa_left);
add_text(1, "DMG: ", 442, 144 + 4, c_black, font_descrip, fa_left);
add_text(1, "30", 648, 144 + 4, c_black, font_default, fa_left);
add_text(1, "Reload (sec): ", 442, 176 + 4, c_black, font_descrip, fa_left);
add_text(1, "5", 648, 176 + 4, c_black, font_default, fa_left);
add_text(1, "Cost (MP): ", 442, 208 + 4, c_black, font_descrip, fa_left);
add_text(1, "10", 648, 208 + 4, c_black, font_default, fa_left);

add_text(1, "Poison", 442, 272, c_black, font_default, fa_left);
add_text(1, "F-J-K", 550, 272, c_purple, font_default, fa_left);
add_text(1, "Deals periodic damage with poison", 442, 304 + 4, c_black, font_descrip, fa_left);
add_text(1, "DMG / sec: ", 442, 336 + 4, c_black, font_descrip, fa_left);
add_text(1, "15 / 5", 648, 336 + 4, c_black, font_default, fa_left);
add_text(1, "Reload (sec): ", 442, 368 + 4, c_black, font_descrip, fa_left);
add_text(1, "8", 648, 368 + 4, c_black, font_default, fa_left);
add_text(1, "Cost (MP): ", 442, 400 + 4, c_black, font_descrip, fa_left);
add_text(1, "25", 648, 400 + 4, c_black, font_default, fa_left);


add_page();
add_text(2, "<- left arrow", 82, 40, c_black, font_descrip, fa_left);
add_text(2, "right arrow ->", 648, 40, c_black, font_descrip, fa_left);

add_text(2, "Magicfall", 82, 80, c_black, font_default, fa_left);
add_text(2, "R-Y-(alt H-S-A)", 198, 80, c_purple, font_default, fa_left);
add_text(2, "Instant damage of miracle", 82, 112 + 4, c_black, font_descrip, fa_left);
add_text(2, "DMG: ", 82, 144 + 4, c_black, font_descrip, fa_left);
add_text(2, "50", 288, 144 + 4, c_black, font_default, fa_left);
add_text(2, "Reload (sec): ", 82, 176 + 4, c_black, font_descrip, fa_left);
add_text(2, "10", 288, 176 + 4, c_black, font_default, fa_left);
add_text(2, "Cost (MP): ", 82, 208 + 4, c_black, font_descrip, fa_left);
add_text(2, "20", 288, 208 + 4, c_black, font_default, fa_left);

add_text(2, "Stone Shield", 82, 272, c_black, font_default, fa_left);
add_text(2, "R-Y-H-A-S", 238, 272, c_purple, font_default, fa_left);
add_text(2, "Stone shield wrapping", 82, 304 + 4, c_black, font_descrip, fa_left);
add_text(2, "max HP for sec: ", 82, 336 + 4, c_black, font_descrip, fa_left);
add_text(2, "100 for 20", 288, 336 + 4, c_black, font_default, fa_left);
add_text(2, "Reload (sec): ", 82, 368 + 4, c_black, font_descrip, fa_left);
add_text(2, "10", 288, 368 + 4, c_black, font_default, fa_left);
add_text(2, "Cost (MP): ", 82, 400 + 4, c_black, font_descrip, fa_left);
add_text(2, "20", 288, 400 + 4, c_black, font_default, fa_left);

add_text(2, "Refresher", 442, 80, c_black, font_default, fa_left);
add_text(2, "R-(alt S)", 648, 80, c_purple, font_default, fa_left);
add_text(2, "Reset all spell cooldowns", 442, 112 + 4, c_black, font_descrip, fa_left);
add_text(2, "DMG: ", 442, 144 + 4, c_black, font_descrip, fa_left);
add_text(2, "0", 648, 144 + 4, c_black, font_default, fa_left);
add_text(2, "Reload (sec): ", 442, 176 + 4, c_black, font_descrip, fa_left);
add_text(2, "60", 648, 176 + 4, c_black, font_default, fa_left);
add_text(2, "Cost (MP): ", 442, 208 + 4, c_black, font_descrip, fa_left);
add_text(2, "60", 648, 208 + 4, c_black, font_default, fa_left);

add_text(2, "Quantinum Dream", 442, 272, c_black, font_default, fa_left);
add_text(2, "H", 740, 272, c_purple, font_default, fa_left);
add_text(2, "Restore a little MP", 442, 304 + 4, c_black, font_descrip, fa_left);
add_text(2, "MP: ", 442, 336 + 4, c_black, font_descrip, fa_left);
add_text(2, "15", 648, 336 + 4, c_black, font_default, fa_left);
add_text(2, "Reload (sec): ", 442, 368 + 4, c_black, font_descrip, fa_left);
add_text(2, "2", 648, 368 + 4, c_black, font_default, fa_left);
add_text(2, "Cost (MP): ", 442, 400 + 4, c_black, font_descrip, fa_left);
add_text(2, "0", 648, 400 + 4, c_black, font_default, fa_left);


add_page();
add_text(3, "<- left arrow", 82, 40, c_black, font_descrip, fa_left);
add_text(3, "right arrow ->", 648, 40, c_black, font_descrip, fa_left);

add_text(3, "E. M. P.", 82, 80, c_black, font_default, fa_left);
add_text(3, "(alt F-D)-A-Y-H-K", 198, 80, c_purple, font_default, fa_left);
add_text(3, "Electromagnetic pulse with damage", 82, 112 + 4, c_black, font_descrip, fa_left);
add_text(3, "DMG: ", 82, 144 + 4, c_black, font_descrip, fa_left);
add_text(3, "50 % of max HP", 214, 144 + 4, c_black, font_default, fa_left);
add_text(3, "Reload (sec): ", 82, 176 + 4, c_black, font_descrip, fa_left);
add_text(3, "18", 288, 176 + 4, c_black, font_default, fa_left);
add_text(3, "Cost (MP): ", 82, 208 + 4, c_black, font_descrip, fa_left);
add_text(3, "35", 288, 208 + 4, c_black, font_default, fa_left);

add_text(3, "Shockwave", 82, 272, c_black, font_default, fa_left);
add_text(3, "D-S-H-J-K-L", 238, 272, c_purple, font_default, fa_left);
add_text(3, "Pulse wave that blocks demon power", 82, 304 + 4, c_black, font_descrip, fa_left);
add_text(3, "DMG: ", 82, 336 + 4, c_black, font_descrip, fa_left);
add_text(3, "10", 288, 336 + 4, c_black, font_default, fa_left);
add_text(3, "Reload (sec): ", 82, 368 + 4, c_black, font_descrip, fa_left);
add_text(3, "12", 288, 368 + 4, c_black, font_default, fa_left);
add_text(3, "Cost (MP): ", 82, 400 + 4, c_black, font_descrip, fa_left);
add_text(3, "25", 288, 400 + 4, c_black, font_default, fa_left);


add_page();
add_text(4, "<- left arrow", 82, 40, c_black, font_descrip, fa_left);
add_text(4, "right arrow ->", 648, 40, c_black, font_descrip, fa_left);

add_text(4, "And a little about 'her.' The Abyss", 82, 80, c_black, font_descrip, fa_left);
add_text(4, "shall appear before you in the guise ", 82, 102 + 4, c_black, font_descrip, fa_left);
add_text(4, "of a maiden. At first, she will be kind", 82, 124 + 4, c_black, font_descrip, fa_left);
add_text(4, "to you, but later, when she realizes", 82, 146 + 4, c_black, font_descrip, fa_left);
add_text(4, "you are just like me, she will grow ", 82, 168 + 4, c_black, font_descrip, fa_left);
add_text(4, "fierce. Each of her visages will ", 82, 190 + 4, c_black, font_descrip, fa_left);
add_text(4, "alter the very nature of this place.", 82, 212 + 4, c_black, font_descrip, fa_left);
add_text(4, "I have recorded some of her faces: ", 82, 234 + 4, c_black, font_descrip, fa_left);

add_image(4, spr_book_demons, 562, 124 + 4, 0.5, 0.5, 0, c_white, 0);
add_text(4, "White Demon of the Abyss", 442, 234 + 4, c_black, font_default, fa_left);
add_text(4, "A defenseless girl who can take ", 442, 266 + 4, c_black, font_descrip, fa_left);
add_text(4, "away your health with her gaze ", 442, 298 + 4, c_black, font_descrip, fa_left);
add_text(4, "while she exists", 442, 330 + 4, c_black, font_descrip, fa_left);


add_page();
add_text(5, "<- left arrow", 82, 40, c_black, font_descrip, fa_left);

add_image(5, spr_book_demons, 182, 124 + 4, 0.5, 0.5, 0, c_white, 1);
add_text(5, "Ampuza", 282, 234 + 4, c_black, font_default, fa_left);
add_text(5, "Capable of burning out your inner ", 82, 266 + 4, c_black, font_descrip, fa_left);
add_text(5, "witchcraft", 92, 298 + 4, c_black, font_descrip, fa_left);

add_image(5, spr_book_demons, 562, 124 + 4, 0.5, 0.5, 0, c_white, 2);
add_text(5, "Mania", 642, 234 + 4, c_black, font_default, fa_left);
add_text(5, "Her hypnotizing gaze can confuse  ", 442, 266 + 4, c_black, font_descrip, fa_left);
add_text(5, "you and change the position of ", 442, 298 + 4, c_black, font_descrip, fa_left);
add_text(5, "your hands", 442, 330 + 4, c_black, font_descrip, fa_left);

if (room == MainMenu) {
	add_text(5, "Press 'Tab' to open the book in the ", 82, 448 + 4, c_black, font_descrip, fa_left);
	add_text(5, "game", 82, 480 + 4, c_black, font_descrip, fa_left);
	add_text(5, "Press 'Esc' to close the book", 442, 448 + 4, c_black, font_descrip, fa_left);
}

#region ===== AddFunctions =====

function handle_page_navigation() {
    if (page_turn_cooldown > 0) return;
    
    if (keyboard_check_pressed(vk_right)) {
        if (current_page + 1 < max_pages && pages[current_page + 1] == 1) {
            var _shake_y = -4;
		    y += _shake_y;
	
			shake_timer++;
	
			if (shake_timer >= 30) {
		        if (image_index > image_number - 0.6) {
					y = start_y;
		
					shake_timer = 0;
				}
		    }
			
			current_page++;
			audio_play_sound(snd_book_process, 100, 0);
        }
    }
    
    if (keyboard_check_pressed(vk_left)) {
        if (current_page > 0) {
            var _shake_y = -4;
		    y += _shake_y;
	
			shake_timer++;
	
			if (shake_timer >= 30) {
		        if (image_index > image_number - 0.6) {
					y = start_y;
		
					shake_timer = 0;
				}
		    }
			
			current_page--;
			audio_play_sound(snd_book_process, 100, 0);
        }
    }
}

function add_page() {
    for (var i = 0; i < max_pages; i++) {
        if (pages[i] == 0) {
            pages[i] = 1;
            page_elements[i] = [];
            return i;
        }
    }
    return -1;
}

function add_text() {
    if (argument0 < 0 || argument0 >= max_pages || pages[argument0] == 0) return false;
    
    var _element = {
        type: "text",
        content: argument1,
        x: argument2,
        y: argument3,
        color: argument4,
        font: argument5,
        alignment: argument6
    };
    
    array_push(page_elements[argument0], _element);
    return true;
}

function add_image() {
    if (argument0 < 0 || argument0 >= max_pages || pages[argument0] == 0) return false;
    
    var element = {
        type: "image",
        sprite: argument1,
        x: argument2,
        y: argument3,
        scale_x: argument4,
        scale_y: argument5,
        rotation: argument6,
        color: argument7,
		index: argument8,
    };
    
    array_push(page_elements[argument0], element);
    return true;
}

function draw_page() {
    if (argument0 < 0 || argument0 >= max_pages || pages[argument0] == 0) return;
    
    var _page_x = x - sprite_width / 2 + page_margin_left + argument1;
    var _page_y = y - sprite_height / 2 + page_margin_top + argument2;
    
    if (page_backgrounds[argument0] != -1) {
        draw_sprite_ext(page_backgrounds[argument0], 0, _page_x + page_width / 2, _page_y + page_height / 2, 
                       page_width / sprite_get_width(page_backgrounds[argument0]), 
                       page_height / sprite_get_height(page_backgrounds[argument0]), 
                       0, c_white, 1);
    }
    
    var _elements = page_elements[argument0];
    for (var i = 0; i < array_length(_elements); i++) {
        var _element = _elements[i];
        
        if (_element.type == "text") {
            var _draw_x = _page_x + _element.x;
            var _draw_y = _page_y + _element.y;
            
            draw_set_font(_element.font != -1 ? _element.font : font_default);
            draw_set_color(_element.color);
            draw_set_halign(_element.alignment);
            draw_text(_draw_x, _draw_y, _element.content);
        }
        else if (_element.type == "image") {
            var _draw_x = _page_x + _element.x;
            var _draw_y = _page_y + _element.y;
            
            draw_sprite_ext(_element.sprite, _element.index, _draw_x, _draw_y, 
                           _element.scale_x, _element.scale_y, 
                           _element.rotation, _element.color, 1);
        }
    }
}

#endregion