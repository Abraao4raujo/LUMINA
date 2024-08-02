
#region Movimentação
var _right, _left, _top, _bottom;

_right = keyboard_check(ord("D"));
_left = keyboard_check(ord("A"));
_top	= keyboard_check(ord("W"));
_bottom = keyboard_check(ord("S"));


speed_x = (_right - _left) * max_speed_x;
speed_y = (_bottom - _top) * max_speed_y;
#endregion 

if(speed_x != 0 || speed_y != 0)
{
	move = 1;
}
else
{
	move = 0;
}

#region
if(_right)
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

sprite_index = sprites[move][dir];
#endregion

#region Diálogo PRESSIONA F PARA INICIA DIALOGO
 
if distance_to_object(obj_par_npcs) <=10{
	if keyboard_check_pressed(ord("F")){
		var _npc = instance_nearest(x, y, obj_par_npcs);
		var _dialogo = instance_create_layer(x,y,"Dialogo", obj_dialogo);
		_dialogo.npc_nome = _npc.nome;
	}
}

#endregion