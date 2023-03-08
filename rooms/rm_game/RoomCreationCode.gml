var _gameover = function() 
{
	global.gameover = true;
}

global.level_timer = time_source_create(time_source_game, 10, time_source_units_seconds, _gameover);
time_source_start(global.level_timer);