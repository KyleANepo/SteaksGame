
 
if(CurrentHP > 0 && State != "Intro"){
 
	draw_set_alpha(1);
	draw_set_color(c_black);
	draw_rectangle(274,18,1260,42,false);
 
	draw_set_color(c_maroon);
	draw_rectangle(276,20,1258,40,false);
	
    draw_rectangle_colour(276,20,(980*(CurrentHP/MaxHP))+276,40,c_red,c_orange,c_orange,c_red,false);
 
}

