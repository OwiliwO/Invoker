/// @description Восстановление активности кнопок


for (var _i = 0; _i < array_length(buttons); _i++) {
    buttons[_i][3] = true;
}

instance_create_layer(0, 0, "Instances_UI", obj_countdown);
