if((image_index == DMGFrame || image_index == DMGFrame+3 || image_index == DMGFrame+6) && abs(depth - other.depth) <= LayerSize && abs(y - other.y) <= LayerSize && Owner == "Enemy"){
    
	if (other.IsParrying == false) {
	
		if (other.IsGuarding == true)
		{
			Damage /= 10;
		}
	
	    other.CurrentHP -= Damage;
	    other.IsHit = true;
	    other.alarm[3] = StunLength;
     
	 
		 //hit effects
		 if (isHeavy == false) { 
			audio_play_sound(SND_HitX1, 10, false);
			with (instance_create_depth(other.x-20, other.y-80, other.depth - 10, OBJ_HitEffect1)) {
			image_angle = irandom(360);
			}
		} else {
			audio_play_sound(SND_HitY1, 10, false);
			with (instance_create_depth(other.x, other.y-80, other.depth - 10, OBJ_HitEffect2)) {
			image_angle = irandom(360);
			}
			hitstop(100);
		
			if (OBJ_Vinny.image_xscale < 0) {
				other.Knockback = 20;
			} else {
				other.Knockback = -20;
			}
		}
	
	} else
	{
		other.IsParrying = false;
		other.IsSlip = true;
		other.sprite_index = SPR_SteaksSlip;
		other.image_index = 0;
		audio_play_sound(SND_Slip, 10, false);
		hitstop(150);
	}
}