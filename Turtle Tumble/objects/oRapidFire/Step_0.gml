if(place_meeting(x,y,oPlayer)){
time = time - 1;	
oRapidFire.visible = false;
}
if(place_meeting(x,y,oPlayer)&& time = 0){
	instance_destroy();
}