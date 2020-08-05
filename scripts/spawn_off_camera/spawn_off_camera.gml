///@desc spawn_off_camera
///@arg obj
///@arg number

//Variable Decleration
var _obj = argument0;
var _num = argument1;
var _pad = 64;

var _xx,_yy;

//logic
repeat(_num){
	_xx = random_range(0,room_width);
	_yy = random_range(0,room_height);

	//Not the best way to do it, but good enough for a quick one
	while(point_in_rectangle(_xx,_yy, 
		global.cameraX - _pad, global.cameraY + _pad, 
		global.cameraX+global.cameraWidth, 
		global.cameraY+global.cameraHeight)){
		
		_xx = random_range(0,room_width);
		_yy = random_range(0,room_height);	
	}
instance_create_layer(_xx,_yy,"Instances",_obj)
}