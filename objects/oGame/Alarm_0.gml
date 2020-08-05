/// @desc Start room
if(room != rGame){exit;}

if(choose(0,1) == 0){
	//go down the side
	var _xx = choose(0, room_width);
	var _yy = irandom_range(0, room_height);
}
else {
	//go top or bottom
	var _xx = irandom_range(0, room_width);
	var _yy = choose(0, room_height);
}

instance_create_layer(_xx, _yy, "Instances", oAsteroid);

alarm[0] = 4*room_speed;