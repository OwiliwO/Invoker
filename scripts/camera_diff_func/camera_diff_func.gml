

function camera_shake() {
	global.camera_shake_data.intensity = argument0;
	global.camera_shake_data.duration = argument1;
	global.camera_shake_data.timer = argument1;
	global.camera_shake_data.active = true;
}

function camera_shake_update(){
	if (variable_global_exists("camera_shake_data") && global.camera_shake_data.active) {
		
		global.camera_shake_data.timer--;
    
	    if (global.camera_shake_data.timer > 0) {
	        var _current_intensity = global.camera_shake_data.intensity * 
	                               (global.camera_shake_data.timer / global.camera_shake_data.duration);
        
	        var _shake_x = random_range(-_current_intensity, _current_intensity);
	        var _shake_y = random_range(-_current_intensity, _current_intensity);
        
	        var _cam = view_camera[0];
        
	        camera_set_view_pos(_cam, 
	            global.camera_shake_data.original_x + _shake_x,
	            global.camera_shake_data.original_y + _shake_y
	        );
	    } else {
	        var _cam = view_camera[0];
	        camera_set_view_pos(_cam, 
	            global.camera_shake_data.original_x,
	            global.camera_shake_data.original_y
	        );
        
	        global.camera_shake_data.active = false;
	    }
	}
}