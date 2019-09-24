key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right)|| keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);



var move = key_right - key_left;

hor = move * wSpeed;

vir = vir + grv


//Jump/Double Jump

if(place_meeting(x,y+1,oWall)) && (key_jump)
{
	vir = -7;		
}else if(!place_meeting(x,y+1,oWall) && global.jPack == true && doubleJump == true && key_jump == true){
	vir = -10;	
	global.jump = true;
	doubleJump = false;
}


if(place_meeting(x,y+1,oWall)){
	doubleJump = true;
}
//Power Ups
	//Jpack
if(place_meeting(x,y,oJetPack)){
	global.jPack = true;
	rF = true;
}
if(key_left == true){
	global.right = false;
	global.left = true;
}else if(key_right == true){
	global.right = true;
	global.left = false;
}
	//Rapid Fire
if(place_meeting(x,y,oRapidFire)){
	global.rFire = true;
	oSlime.iF = 15;
	oSquirrel.iF = 15;
}
//Horizontal Collisons
if(place_meeting(x+hor,y,oWall)){
	
	while(!place_meeting(x+sign(hor),y,oWall))
	{
		x = x + sign(hor);	
	}
	hor = 0;
}

x = x + hor;

//Verticle Collisons
if(place_meeting(x,y+vir,oWall)){
	
	while(!place_meeting(x,y+sign(vir),oWall))
	{
		y = y+ sign(vir);	
	}
	vir = 0;
}


y = y + vir;
//Damage
timeLimit--;
if(place_meeting(x,y,oSquirrel) || place_meeting(x,y,oSlime)|| place_meeting(x,y,oLeaf)){
	//if(timeLimit <= 0){
	//	if(global.right == true){
	//		oPlayer.x = oPlayer.x - 100
	//		oPlayer.y = oPlayer.y - 50
	//	}else{
	//		oPlayer.x = oPlayer.x + 100
	//		oPlayer.y = oPlayer.y - 50
	//	}
	//}
	//timeLimit = 60;
	if(immunityFrames <= 0){
		immunityFrames = 60;
		image_alpha = .4;
		if(global.hpPickUp == true && global.hp >= 11){
			global.healthIndex -= 1;
			global.hp -= 1;
		}else{
			global.hp -= 1;
		}
	
	}
}else if( place_meeting(x,y,oPinecone) || place_meeting(x,y,oCherry)){
	if(immunityFrames <= 0){
		immunityFrames = 60;
		image_alpha = .4;
	if(global.hpPickUp == true && global.hp >= 11){
			global.healthIndex -= 2;
			global.hp -= 2;
		}else{
			global.hp -= 2;
		}
	}
}
immunityFrames--;
image_alpha += .02;
//HP Up

if(place_meeting(x,y,oHUp)){
	global.hpPickUp = true;	
	global.healthIndex = 10
	global.hp = 20
}

if(place_meeting(x,y,oRestore) && global.hp < 10){
	global.hp += 1;
}else if(place_meeting(x,y,oRestore) && global.hp >= 10 && global.hpPickUp ==true && global.hp < 20){
	global.hp += 1;
	global.healthIndex += 1;
}
//Animation
if(place_meeting(x,y+10,oWall)){
	if(key_right == true && key_left == true){
	sprite_index = sPlayer;
	}	
	else if(key_right == true)
	{
		image_xscale = scale;
		sprite_index = sPlayerR;
		image_speed = 1;
	}else if (key_left == true)
	{
		image_xscale = inverseScale;
		sprite_index = sPlayerR;
		image_speed = 1;
	}else{
		image_speed = 1;
		sprite_index = sPlayer;
	}	
}else{
	if(key_right == true)
	{
		image_xscale = scale;
		sprite_index = sPlayerR;
		image_speed = 1;
	}else if (key_left == true)
	{
		image_xscale = inverseScale;
		sprite_index = sPlayerR;
		image_speed = 1;
	}
	if(sign(vir) = 1){
		sprite_index = sPlayerJ;
		image_index = 1;
	}else{
		sprite_index = sPlayerJ;
		image_index = 0;
	}
}