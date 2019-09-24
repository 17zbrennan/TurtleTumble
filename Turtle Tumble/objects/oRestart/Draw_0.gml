draw_set_font(fTitle);
draw_set_color(c_yellow);
if(global.hp <= 0){
	draw_text( 650, 100, "You lost.")
}else if(global.hp > 0){
		draw_text( 650, 100, "You Won!")
		
}
draw_text(1005, 500,"Press R to go to the main menu!");