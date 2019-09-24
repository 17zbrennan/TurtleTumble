if (place_meeting(x,y,oWall)){
instance_destroy();
}
if(place_meeting(x,y,oSquirrel)){
	oArrow.visible = false;
}

if(place_meeting(x,y,oSlime)){
	oArrow.visible = false;	
}