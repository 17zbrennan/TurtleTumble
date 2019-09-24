if(place_meeting(x,y,oArrow) && immunityFrames <= 0){
	hp -= 1;
	immunityFrames = iF;
	if (hp <= 0) {
		instance_destroy();
	}
}

if(pinecone <= 0) 
{
	//in yellow is the layer it spawns on.
	with (instance_create_layer(x,y,"Bullets",oPinecone))
	{
		speed = 5;
		direction = -90 //+ random_range(-20,20);
		image_angle = -180;
	}
	pinecone = 120;
}

