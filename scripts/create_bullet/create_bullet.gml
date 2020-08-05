///@desc create bullet
///@arg direction
///@arg speed
///@arg faction

var _dir = argument[0];
var _speed = argument[1];
var _faction = argument[2];
var _creator = id;

audio_play_sound(snd_zap,1, false);

var _bullet = instance_create_layer(x,y,"Instances",oBullet);

with (_bullet){
	direction = _dir;
	speed = _speed;
	faction = _faction;
	creator = _creator;
	
	if(faction == factions.ally) image_blend = c_aqua;
	else if (faction == factions.enemy) image_blend = c_red;
}