/// @description Insert description here
// You can write your code in this editor

if (!global.pause)
{
	scr_mouse_sobre();
}
scr_blinking();


//Voltando para a posição inicial
if (phy_position_x > room_width + 2500 || phy_position_x < -2500
	|| phy_position_y > room_height + 100 + sprite_height|| phy_position_y < -2500)
{
	scr_restart_shape();
}

//Limitando a velocidade máximo
phy_speed_x = clamp(phy_speed_x, -10, 10);
phy_speed_y = clamp(phy_speed_y, -10, 10);


//Me guardando na lista da mesa
if (mesa != noone)
{
	var x1 = mesa.bbox_left;
	var x2 = mesa.bbox_right;
	var y1 = mesa.bbox_top;
	var y2 = mesa.bbox_bottom;
	
	//Checando se eu estou dentro da posição inicial
	var col = point_in_rectangle(x, y, x1, y1, x2, y2);
	
	if (col)
	{
		//Checando se eu já estou na lista
		var pos = ds_list_find_index(global.lista, id);
		if (pos == -1)
		{
			//show_message("entrei");
			ds_list_add(global.lista, id);
		}
	}
	else
	{
		//Checando se eu devo me retirar da lista
		var pos = ds_list_find_index(global.lista, id);
		if !(pos == -1)
		{
			//show_message("sai");
			ds_list_delete(global.lista, pos);
		}
	}
}
else
{
	if (instance_exists(obj_mesa)) mesa = obj_mesa.id;
}


//if (ativo && place_meeting(x, y, obj_mesa) && alarm[1] < 0)
//{
//	ativo = false;
//	//image_blend = c_red;
//}



//Estados


if (instance_exists(obj_mesa))
{
	if (obj_mesa.fim)
	{
		estado = "completo";
	}
}

switch(estado)
{
	case "parado":
	
		olho = olhos[0];
		//Sendo pego
		if (ativo)
		{
			estado = "pego";
		}
		else if (phy_speed_y != 0)
		{
			estado = "caindo";
		}
		else if (abs(phy_angular_velocity) > .1)
		{
			estado = "girando";
		}
		break;
	
	case "pego":
		
		olho = olhos[1];
		
		if (!ativo)
		{
			estado = "parado";
		}
	
		break;
		
	case "caindo":
		
		olho = olhos[4];
		
		if (phy_speed_y == 0)
		{
			estado = "parado";
		}
		
		break;
		
	case "girando":
		
		olho = olhos[2];
		
		if (abs(phy_angular_velocity) < .1)
		{
			estado = "parado";
			phy_angular_velocity = 0;
		}
		
		break;
		
	case "completo":
	
		olho = olhos[3];
		
		break;
	
}