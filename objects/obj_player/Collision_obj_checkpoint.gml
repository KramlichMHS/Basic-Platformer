/// @description Reach checkpoint

if (other.image_index == 0) {
	global.spawn_x = other.x;
	global.spawn_y = other.y;
	other.image_index = 1;
}
