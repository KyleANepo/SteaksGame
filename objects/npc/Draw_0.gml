//shadow

draw_set_alpha(.6);
draw_set_color(c_black);
draw_ellipse(x-40,y-8,x+40,y+8,false);

//draw shadow	
draw_set_alpha(1);
draw_self();