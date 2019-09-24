if(place_meeting(x,y,oBoss)){
	sprite_index = Explode;
	image_speed = 1;
	if(timerTime <= 0){
		instance_destroy();
	}
}