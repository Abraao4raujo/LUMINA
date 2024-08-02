#region Movimentação
var _right, _left, _top, _bottom, _attack;

_right = keyboard_check(ord("D")); 
_left = keyboard_check(ord("A"));
_top = keyboard_check(ord("W"));
_bottom = keyboard_check(ord("S"));
_attack = keyboard_check(vk_space); 

speed_x = (_right - _left) * max_speed_x;
speed_y = (_bottom - _top) * max_speed_y;
#endregion

if (speed_x != 0 || speed_y != 0)
{
    move = 1;
}
else
{
    move = 0;
}

#region Direção e Ataque

if (_right)
{
	dir = 2;
}
else if (_left)
{
    dir = 3;
}
else if (_bottom)
{
    dir = 0;
}
else if (_top)
{
    dir = 1;
} 

if (_attack) 
{
	attk = 1;
}
else
{
	attk = 0;
}

sprite_index = sprites[move][dir][attk];
#endregion

//criando o objeto de dano
if(_attack && image_index >= 2 && dano == noone){
	dano = instance_create_layer(x + sprite_width/2, y - sprite_height/2, layer, obj_dano);
	dano.dano = ataque; 
	dano.pai = id;
}

#region Diálogo - Pressione E para iniciar diálogo
if (distance_to_object(obj_par_npcs) <= 10)
{
    if (keyboard_check_pressed(ord("E")))
    {
        var _npc = instance_nearest(x, y, obj_par_npcs);
        var _dialogo = instance_create_layer(x, y, "Dialogo", obj_dialogo);
        _dialogo.npc_nome = _npc.nome;
    }
}
#endregion