versp += grav;
global.arrowDestroy = false;
area--;

if(area <= 0){
	hrsp = -hrsp;
	area = 180
}
//V_collision
if (place_meeting(x,y+versp,oWall))
{
	
	while(!place_meeting(x,y + sign(versp),oWall))
	{
		y += sign(versp);
	}
	versp =0;
}
jumptime--;
if(jumptime <= 0 && place_meeting(x,y+1,oWall)){
	versp = -14;
	jumptime = 240;
}
/*
	//jumping
	if(jumptime <= 0) {
		
		for(i=0; i<100; i++) {
			versp = -1;
			y += sign(versp);
		}
		 jumptime = 120;
	}
	
	jumptime--;
	
}
*/
y += versp;
iFrameSlime--;
if(place_meeting(x,y,oArrow) and iFrameSlime <= 0){
	hp--;
	iFrameSlime = iF;
}

//H_collision
if (place_meeting(x+hrsp,y,oWall))
{
	while(!place_meeting(x,y + sign(versp),oWall))
	{
		x += sign(hrsp);
	}
		hrsp = -hrsp;
}

x += hrsp



//Animation
if(!place_meeting(x,y+1,oWall) && sign(versp))
{
	sprite_index=sFall;
	image_speed = 1;
}
else if ((!place_meeting(x,y+1,oWall) && sign(-versp)))
{
	sprite_index=sjump;
	image_speed = 1;
}
else
{
	image_speed = 1;
	if (hrsp == 0)
	{
		sprite_index = slimestand;
	}
	else
	{
		sprite_index = slimescooch;
	}
}

if (hrsp != 0){ 
	image_xscale = sign(hrsp)
	}
