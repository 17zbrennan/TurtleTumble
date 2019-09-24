image_index = 0;
image_speed = 0;
if(global.jump == true){
	image_index = 1;
	image_speed = 1;
	global.jump = false;		
}

if(global.jPack == false){
	oJPack.visible = false;	
}else{
	oJPack.visible = true;
}
if(global.right == true){
	x = oPlayer.x - 12;
	y = oPlayer.y;
	image_xscale = iXScale;
}else if(global.left == true){
	x = oPlayer.x + 12;
	y = oPlayer.y;
	image_xscale = iXScaleNeg;
}