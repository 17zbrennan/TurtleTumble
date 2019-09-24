	draw_sprite(sHealth,global.hp,hpX,hpY);
if(global.hpPickUp == true){
	draw_sprite(sHealthMax,global.healthIndex,hpX+200,hpY);
}	


if(global.jPack == true){
	//if(global.rFire == false){
		draw_sprite(sJetPackIcon,0,hpX-150,hpY+35)
	//}else if(global.rFire == true){
	//	draw_sprite(sJetPackIcon,0,hpX-320,hpY+50)
	//}
}
if(global.rFire == true){
	if(global.jPack == false){
		draw_sprite(sRapidFireIcon,0,hpX-150,hpY+30)
	}else{
		draw_sprite(sRapidFireIcon,0,hpX-200,hpY+30)
	}
}