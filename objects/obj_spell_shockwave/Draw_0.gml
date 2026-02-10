/// @description Визуализация


//draw_text(10, 130, "Shockwave");
draw_self();
if (image_index > image_number - 0.6) {
	for (var i = 0; i < array_length(flashes); i++) {
	    var flash = flashes[i];
    
	    draw_set_alpha(flash.alpha);
	    draw_set_color(c_white);
    
	    draw_sprite_ext(
	        flash.sprite,
	        image_index,
	        flash.x,
	        flash.y,
	        flash.scale,
	        flash.scale,
	        flash.angle,
	        c_white,
	        flash.alpha
	    );
	}

	draw_set_alpha(1);
	draw_set_color(c_white);
}
