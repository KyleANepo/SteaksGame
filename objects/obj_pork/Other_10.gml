var MyAction = floor(random(100));
 
switch(State){
     
    case "Idle":
        if(MyAction <= 50){
                State = "PositionBehind";
            }else{
                State = "PositionFront";
            }
        break;
	
	case "Hit": //check if health is brought down a chunk, makes next attack a mortal wound
		if(CurrentHP <= 3000 && hasPassed1 == false) {
			Mortal = 1 
			hasPassed1 = true
		}
		if(CurrentHP <= 1500 && hasPassed2 == false) {
			Mortal = 1
			hasPassed2 = true
		}
		if(CurrentHP <= 500 && hasPassed3 == false) {
			Mortal = 1 
			hasPassed3 = true
		}
		break;
		
}