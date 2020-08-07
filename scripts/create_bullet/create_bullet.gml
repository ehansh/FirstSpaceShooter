///@desc create bullet
///@arg direction
///@arg speed
///@arg faction
///@arg gun_type*

var _dir = argument[0];
var _speed = argument[1];
var _faction = argument[2];
var _creator = id;

var _gun_type = -1;
if (argument_count > 3) _gun_type = argument[3];


//Choose gun type

switch(_gun_type){
	case power_ups.triple:
		var _bullet = instance_create_layer(x,y,"Instances",oBullet);
		initialize_bullet(_dir, _speed, _faction, _bullet);
		//bleed into the double shot code
		
	case power_ups.double:
		audio_play_sound(snd_zap,1, false);
		
		var _sep = 12;
		
		var _bullet = instance_create_layer(x+lengthdir_x(_sep,_dir+90),y+lengthdir_y(_sep,_dir+90),"Instances",oBullet);
		initialize_bullet(_dir, _speed, _faction, _bullet);
		
		var _bullet = instance_create_layer(x+lengthdir_x(_sep,_dir-90),y+lengthdir_y(_sep,_dir-90),"Instances",oBullet);
		initialize_bullet(_dir, _speed, _faction, _bullet);
	
		break;

		
	case power_ups.quad:
		audio_play_sound(snd_zap,1, false);
		
		var _sep = 7, bullet_angle;
		
		var i = 0; repeat(4){
			bullet_angle = _dir + (i * 90);
			var _bullet = instance_create_layer(
				x+lengthdir_x(_sep,bullet_angle),
				y+lengthdir_y(_sep,bullet_angle),
				"Instances",oBullet
			);
			initialize_bullet(_dir, _speed, _faction, _bullet);
			i++;
		}
		break;
	
	case power_ups.five:
		audio_play_sound(snd_zap,1, false);
		
		var _sep = 7, bullet_angle;
		
		var i = 0; repeat(8){
			bullet_angle = _dir + (i * 45);
			var _bullet = instance_create_layer(
				x+lengthdir_x(_sep,bullet_angle),
				y+lengthdir_y(_sep,bullet_angle),
				"Instances",oBullet
			);
			initialize_bullet(_dir, _speed, _faction, _bullet);
			i++;
		}
		break;
		
	case power_ups.laser:
		
		break;
		
	default:
		audio_play_sound(snd_zap,1, false);
		var _bullet = instance_create_layer(x,y,"Instances",oBullet);
		initialize_bullet(_dir, _speed, _faction, _bullet);
		break;
}

