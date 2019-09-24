if(place_meeting(x,y,oPlayer)){
timer = timer - 1;	
oJetPack.visible = false;
}
if(place_meeting(x,y,oPlayer)&& timer = 0){
	instance_destroy();
}