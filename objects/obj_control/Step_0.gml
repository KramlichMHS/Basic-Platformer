/// @description Game over man
if (global.gameover) {
	if (keyboard_check_pressed(vk_anykey)) {
		game_restart();
	}
}
