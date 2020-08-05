/// @desc Ship Step Logic
if(keyboard_check(vk_left)){
	image_angle += 5;
}

if(keyboard_check(vk_right)){
	image_angle -= 5;
}

if(keyboard_check(vk_up)){
	motion_add(image_angle, 0.05);
}

if(keyboard_check_pressed(vk_space)){
	audio_play_sound(snd_zap,1, false);
	var _bullet = instance_create_layer(x,y,"Instances",oBullet);
	_bullet.direction = image_angle;
}

move_wrap(true,true,sprite_width/2);

