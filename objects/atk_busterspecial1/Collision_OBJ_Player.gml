if((image_index > 3 && image_index <= DMGFrame) && hit < 1 && abs(depth - other.depth) <= LayerSize && abs(y - other.y) <= LayerSize && Owner == "Enemy" && other.IsJumping == false){
    
	hit = 1;
	
	if (other.IsParrying == false) {
	
		if (other.IsGuarding == true && isUnblock == false)
		{
			Damage /= 10;
			StunLength /= 2;
		}
	
	    other.CurrentHP -= Damage;
	    other.IsHit = true;
	    other.alarm[3] = StunLength;
     
	 
		 //hit effects
		 
		 if (other.IsGuarding == true && isUnblock == false)
		 {
			 blockatkeffects();
		 } else
		 {
			 if (isHeavy == false) {
				 lightatkeffects();
			 } else
			 {
				 heavyatkeffects();
			 }
		 }
		 
		 if (isHeavy == true)
		 {
			 hitstop(100);
			 
			 if (OBJ_Enemy.image_xscale < 0) {
				other.Knockback = Knockback;
				} else {
				other.Knockback = -Knockback;
				}
		 }
		 
	} else
	{
		other.IsParrying = false;
		other.IsGuarding = false;
		other.IsSlip = true;
		other.sprite_index = SPR_SteaksSlip;
		other.image_index = 0;
		
		other.CurrentHP += 5;
		
		other.flashColor = c_blue;
		other.flashAlpha = 1;
		audio_play_sound(SND_Slip, 10, false);
		with (instance_create_depth(other.x-20, other.y-80, other.depth - 10, OBJ_ParryEffect)) {
			image_angle = irandom(360); 
		}
		hitstop(100);
	}
}
