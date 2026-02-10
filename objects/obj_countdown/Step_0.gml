/// @description Итерация


if (!finished) {
    countdown_timer -= 1;
    
    if (countdown_timer <= 0) {
        countdown_value -= 1;
        
        if (countdown_value <= 0) {
            finished = true;
            alarm[0] = 30;
        } else {
            countdown_timer = countdown_speed;
        }
    }
}

if (!finished) {
    countdown_text = string(countdown_value);
} else {
    countdown_text = "TO ABYSS...";
}