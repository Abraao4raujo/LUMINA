// Inherit the parent event
event_inherited();

max_speed_x = 1;
max_speed_y = 1;
move = 0;
dir = 0;
attk = 0;

// MATRIZ DE SPRITES
// PARADO
sprites[0][0][0] = spr_player_bottom_p;
sprites[0][1][0] = spr_player_top_p;
sprites[0][2][0] = spr_player_right_p;
sprites[0][3][0] = spr_player_left_p;

sprites[0][2][1] = spr_player_attack_right;
sprites[0][3][1] = spr_player_attack_left;
sprites[0][1][1] = spr_player_attack_top;
sprites[0][0][1] = spr_player_attack_bottom;

// SPRITES MOVENDO
sprites[1][0][0] = spr_player_bottom;
sprites[1][1][0] = spr_player_top;
sprites[1][2][0] = spr_player_right;
sprites[1][3][0] = spr_player_left;

sprites[1][2][1] = spr_player_attack_move_right;
sprites[1][3][1] = spr_player_attack_move_left;
sprites[1][1][1] = spr_player_attack_move_top;
sprites[1][0][1] = spr_player_attack_move_bottom;

dano = noone;