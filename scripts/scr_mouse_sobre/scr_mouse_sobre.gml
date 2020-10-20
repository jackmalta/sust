function scr_mouse_sobre() {

	var click = mouse_check_button(mb_left);
	var sobre = position_meeting(mouse_x, mouse_y, self);


	if (ativo)
	{
		phy_position_x = mouse_x;
		phy_position_y = mouse_y;
		phy_speed_x = 0;
		phy_speed_y = 0;
		phy_angular_velocity = 0;
	
		if (!click)
		{
			ativo = false;
			if (global.hold == id)
			{
				global.hold = noone;
			}
		}
	}



	if (sobre && click && !ativo && global.hold == noone)
	{
		ativo = true;
		global.hold = id;
	}


}
