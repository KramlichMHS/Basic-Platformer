/// @description Reach win

if (other.image_index == 0) {
	other.image_index = 1;
	global.gameover = true;
	instance_destroy();
}
