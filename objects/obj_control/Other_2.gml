/// @description Set global vars and set player position

global.spawn_x = 64;
global.spawn_y = 2752;
instance_create_layer(global.spawn_x, global.spawn_y, "Instances", obj_player);
