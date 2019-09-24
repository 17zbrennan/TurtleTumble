	x = oPlayer.x;
	y = oPlayer.y+5;

	image_angle = point_direction(x,y,mouse_x,mouse_y);

	if((image_angle > 90) and (image_angle < 270)){
	image_yscale = scaleGun;
}else{
	image_yscale = scaleGunBack;
}
delay = delay - 1;
if(mouse_check_button(mb_left)) && (delay < 0)
{
	if(global.rFire = true){
		delay = 20;	
	}else{
		delay = 60;
	}
	
	with(instance_create_layer(x,y,"Bullets",oArrow))
	{
		speed = 25;
		direction = other.image_angle;
		image_angle = direction;
	}
}

