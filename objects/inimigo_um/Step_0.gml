if(keyboard_check(ord("L")))
{
sprite_index = spr_player_attack_left;
}else
{
sprite_index = spr_player_left_p;
}

switch(estado)
{
	case "parado":
	{
		sprite_index = spr_inimigo_parado;
		
		if(position_meeting(mouse_x, mouse_y, self))
		{
			if(mouse_check_button_pressed(mb_right))
			{
				estado = "hit";
				image_index = 0;
			}
		}
		
		break;
	}
	case "hit":
	{
		sprite_index = spr_inimigo_levando_hit;
		//condicao para sair do estado de atacar direto
		vida_atual--;
		if(image_index > image_number-1)
		{
			//checando se eu ainda tenho vida
			if(vida_atual > 0)
			{
				estado = "parado";
			}
			else if(vida_atual <= 0){
				estado = "dead"
			}
		}
		break;
	}
	
	case "dead":
	{
		//morrendo de verdade
		sprite_index = spr_inimigo_morrendo;
		if(image_index > image_number-1)
		{
			image_speed = 0;
			image_alpha -= .01
			if(image_alpha <= 0) instance_destroy();
		}
		
	}
}