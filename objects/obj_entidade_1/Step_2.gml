var _speed_x = sign(speed_x);
var _speed_y = sign(speed_y);


// HORIZONTAL
repeat(abs(speed_x))
{
	if (place_meeting(x + _speed_x, y, obj_vegetacao))
	{
		speed_x = 0;
		break;
	}
	x += _speed_x;
}

// VERTICAL
repeat(abs(speed_y))
{
	if (place_meeting(x, y + _speed_y, obj_vegetacao))
	{
		speed_y = 0;
		break;
	}
	y += _speed_y;
}