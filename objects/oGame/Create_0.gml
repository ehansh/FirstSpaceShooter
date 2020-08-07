/// @desc Set global variables
score = 0;
lives = 3;

draw_set_font(fText);

randomize();

enum factions {
	neutral,
	ally,
	enemy
}

enum power_ups{
	double,
	triple,
	quad,
	five,
	laser,
	shield
}
