/// @description Insert description here
// You can write your code in this editor

// Timer per la palla 
if(timer != 0) timer--;

// Quando non c'è il timer
else{
	var collision_h = place_meeting(x, y, hwall);
	var collision_v = place_meeting(x, y, vwall);
	var collision_player = place_meeting(x, y, Player);

	// Inverti il senso di y
	if (collision_h){
		vel_y *= -1;
	}
	// Inverti il senso di x 
	else if(collision_player){
		vel_x *= -1;
		if(vel_x > 8 || vel_x <-8) ; // Limitazione della velocità:
									 // non fare niente
		
		// Aumenta la velocità della palla
		else if(vel_x <0) vel_x--;
		else if(vel_x>0) vel_x++;
		
		vel_y = random_range(-2,2);
	}
	else if(collision_v){
		// Ricrea l'istanza
		instance_destroy()
		instance_create_depth(355, 235, 0, ball);
	}

	// Aggiornamento della posizione 
	y += vel_y;
	x += vel_x;
}