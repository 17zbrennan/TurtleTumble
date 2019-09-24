if(cherryBomb <= 0) 
{
	//in yellow is the layer it spawns on.
	with (instance_create_layer(x,y,"Bullets",oCherry))
	{
		
	}
	cherryBomb = 320;
}

if(healthPoints <= 0){
	instance_destroy();
	target = rThree;
	SlideTransition(TRANS_MODE.GOTO,target);
}