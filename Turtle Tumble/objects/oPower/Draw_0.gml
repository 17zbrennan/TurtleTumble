draw_set_font(fMenu);
draw_set_color(c_lime)

if(global.jPack == true && timeJPack > 0){
	timeJPack--;
	draw_text(oPlayer.x + 120, oPlayer.y - 50, "Jetpack Acquired!")
}else if(global.rFire == true && timeRFire > 0){
	timeRFire--;
	draw_text(oPlayer.x + 120, oPlayer.y - 50, "Rapid Fire Acquired!")	
}



