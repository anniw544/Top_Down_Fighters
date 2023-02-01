
// player pos tracking
global.Player1X = x
global.Player1Y = y

// player movement code
var h_move = gamepad_axis_value(pad_num, gp_axislh);
var v_move = gamepad_axis_value(pad_num, gp_axislv);

if ((h_move != 0) || (v_move != 0))
    {
    x += h_move * 4;
    y += v_move * 4;
    }
	
	var h_point = gamepad_axis_value(pad_num, gp_axisrh);
var v_point = gamepad_axis_value(pad_num, gp_axisrv);

if ((h_point != 0) || (v_point != 0))
    {
    var pdir = point_direction(0, 0, h_point, v_point);
    var dif = angle_difference(pdir, image_angle);
    image_angle += median(-20, dif, 20);
    }
	
	var h_move = gamepad_button_check(pad_num, gp_padr) - gamepad_button_check(pad_num, gp_padl);
var v_move = gamepad_button_check(pad_num, gp_padd) - gamepad_button_check(pad_num, gp_padu);

if ((h_move != 0) || (v_move != 0))
    {
    x += h_move * 4;
    y += v_move * 4;
    }
// player action code
	var s_rt = gamepad_button_value(pad_num, gp_shoulderrb);
	
	if (s_rt = 1)
	{
		instance_create_layer(x,y,"instances",O_player_1_fist,)
	}