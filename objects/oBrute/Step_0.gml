/// @desc ???
image_index = HP - 1;

// Inherit the parent event
event_inherited();

if(!instance_exists(oShip)) exit;

if(point_distance(x,y, oShip.x, oShip.y) < 250){
	//turn to look at player
	var _new_angle = point_direction(x,y, oShip.x, oShip.y);
	_new_angle = image_angle - angle_difference(image_angle,_new_angle);
	image_angle = lerp(image_angle, _new_angle, 0.1);
	
	//Chase player
	direction = image_angle;
	
	speed += 0.01;
}
else {
	speed = lerp(speed, originalSpeed, 0.1);
}