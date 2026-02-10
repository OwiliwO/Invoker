/// @description Инициализация


image_index                        = irandom_range(0, image_number - 1);
image_speed                        = random_range(0.5, 0.7);


start_y                            = y;
start_x                            = x;
levitation_height                  = 10 + random(5);
levitation_speed                   = 0.5 + random(0.5);
levitation_time                    = 0;
levitation_offset                  = random(360);

shake_timer                        = 0;

is_success_cast                    = false;
is_fail_cast                       = false;

#region ===== AddFunctions =====

function arrays_equal(_arr1, _arr2) {
    if (array_length(_arr1) != array_length(_arr2)) return false;
    for (var _i = 0; _i < array_length(_arr1); _i++) {
        if (_arr1[_i] != _arr2[_i]) return false;
    }
    return true;
}

#endregion






