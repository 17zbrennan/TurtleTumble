sLeafing--;
if(sLeafing <= 0) 
{
	//in yellow is the layer it spawns on.
	with (instance_create_layer(x,y,"Bullets",oLeaf))
	{
		speed = 10;
		direction = -90 + random_range(-40,40);
	
	}
	sLeafing = 120;
}