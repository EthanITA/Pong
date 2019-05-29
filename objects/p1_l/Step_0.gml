/// @description Insert description here
// You can write your code in this editor

// Senso del movimento è su o giù: -1 o 1
var move = keyboard_check(player[p_id, vec.down]) - keyboard_check(player[p_id, vec.up]);

// Senso della velocità: su o giù
player[p_id, vec.vel_y] = move * player[p_id, vec.steps_frame];

// Controlla se c'è una collisione con hwall
var collision = place_meeting(x, y+player[p_id, vec.vel_y], hwall)

// Aggiornamento della posizione del giocatore
y = y + player[p_id, vec.vel_y]*(!collision);