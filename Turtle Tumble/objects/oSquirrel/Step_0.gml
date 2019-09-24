flaps--;
pinecone--;
immunityFrames--;
if (place_meeting(x+flysp,y,oWall)) {
	flysp = -flysp;
}
else {
	image_speed = 1;
	if(flysp==0)
	{
		image_speed = 0;
	}
}



x += flysp;


if (flaps<=0) {
flysp = -flysp;
flaps = 120;
}

if (flysp != 0) image_xscale = sign(flysp);
 


