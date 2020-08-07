/// @desc thing died
audio_play_sound(snd_die, 1, false);
repeat(10){
	instance_create_layer(x,y,"Instances",oDebris);
}

switch(object_index){
	case oRaider: score += 15; break;
	case oHunter: score += 30; break;
	case oBrute:  score += 50; break;
}

/// @desc Maybe spawn a power up?

if(irandom_range(0,1) == 0){
	instance_create_layer(x,y, "Instances", oPowerUp);	
}