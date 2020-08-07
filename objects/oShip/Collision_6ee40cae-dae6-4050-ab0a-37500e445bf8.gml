/// @desc Get good!

with(other){
	var _power_up_type = image_index;
	instance_destroy();
	
}

switch(_power_up_type){
	case power_ups.shield:
		invincible = true;
		alarm[1] = 8*room_speed;
		break;
		
	default:
		//good stuff
		guns = _power_up_type;
		alarm[0] = 5*room_speed;
		break;
}
