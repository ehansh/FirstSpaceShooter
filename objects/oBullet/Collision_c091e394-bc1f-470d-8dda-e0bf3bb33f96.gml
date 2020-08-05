/// @desc Bullet with Asteroid
instance_destroy();
audio_play_sound(snd_die, 1, false);
score += 10;

with(other){
	instance_destroy();
	
	if(sprite_index == sAsteroidHuge){
		repeat(2)
		{
			var _SplitRoid = instance_create_layer(x,y,"Instances",oAsteroid)
			_SplitRoid.sprite_index = sAsteroidMedium;
		}
	}
	else if (sprite_index == sAsteroidMedium){
		repeat(2){
			var _SplitRoid = instance_create_layer(x,y,"Instances",oAsteroid)
			_SplitRoid.sprite_index = sAsteroidSmall;
		}
	}
	else{
		repeat(10){
			instance_create_layer(x,y,"Instances",oDebris);
		}
	}
}
