cherryBomb--;
immunityFrame--;
if(immunityFrame <= 0 && place_meeting(x,y,oArrow)){
	 if(armor < 1){
		healthPoints -= 3;	
		
	 }else if(armor == 1){
		healthPoints -= 2;	 
	 }else{
		 healthPoints -= 1;
	 }
	 if(global.rFire == false){
		 immunityFrame = 30;
	 }else{
		 immunityFrame = 15
	 }
}

if(immunityFrame <= 0 && place_meeting(x,y, oCherry)){
	armor -=1
	healthPoints -= 5;
	immunityFrame = 60;
}


