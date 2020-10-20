function scr_blinking() {
	//Blinking
	if (blink <= 0)
	{
		if (random(1) <= .05)
		{
			blink += .01;
		}
	}
	else
	{
		blink += .01;
		if (blink >= 1)
		{
			blink = 0;
		}
	}


}
