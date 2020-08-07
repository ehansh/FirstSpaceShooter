///@desc initialize_bullet
///@arg direction
///@arg speed
///@arg faction
///@arg bullet_instance

var _dir = argument[0];
var _speed = argument[1];
var _faction = argument[2];
var _creator = id;
var _inst = argument[3]

with (_inst){
	direction = _dir;
	speed = _speed;
	faction = _faction;
	creator = _creator;
	
	if(faction == factions.ally) image_blend = c_aqua;
	else if (faction == factions.enemy) image_blend = c_red;
}