/// @description On screen text

if (global.gameover) {
	draw_set_halign(fa_middle);
	draw_text_transformed_color(camera_get_view_width(view_camera[0]) / 2, camera_get_view_height(view_camera[0]) / 3,
		"Game Over", 3, 3, 0,
		c_red, c_red, c_red, c_red, 1);
	draw_text(camera_get_view_width(view_camera[0]) / 2, camera_get_view_height(view_camera[0]) / 3 * 2,
		">> Press any key to restart <<",);
	draw_set_halign(fa_left);
}

draw_set_halign(fa_middle);
draw_text(camera_get_view_width(view_camera[0]) / 2, 20, "Time: " + string_format(time_source_get_time_remaining(global.level_timer), 1, 1));