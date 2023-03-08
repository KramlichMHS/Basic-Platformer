/// @description Set global vars and set player position

global.spawn_x = 64;
global.spawn_y = 2752;
global.gameover = false;
instance_create_layer(2624, 192, "Instances", obj_player);
//instance_create_layer(global.spawn_x, global.spawn_y, "Instances", obj_player);
