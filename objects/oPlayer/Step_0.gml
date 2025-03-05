//get inputs
rightKey = keyboard_check (vk_right);
leftKey = keyboard_check (vk_left);
jumpKeyPressed = keyboard_check_pressed (vk_space);

//x Movement
	//Direction
	moveDir = rightKey - leftKey;
	
	//get xspd
	xspd = moveDir * moveSpd;
	
	//x collision
	var _subPixel = .75;
	if place_meeting ( x + xspd, y, oWall)
	{
		//scoot up to wall
		var _pixelCheck = _subPixel * sign(xspd);
		while  !place_meeting( x + _pixelCheck, y, oWall)
		{ 
			x += _pixelCheck;
		}
		
		//Collision
		xspd = 0;
	}
	
	//Move
	x += xspd;

//y movement

	//Gravity
	yspd += grav;
	if yspd > termVel{yspd = termVel;}
	
	//Jump
	if jumpKeyPressed && place_meeting (x, y + 1, oWall)
	{
		yspd = jspd
	}
	
	//Y collsion
	var _subPixel = .5;
	if place_meeting(x, y + yspd, oWall)
	{
	//scoot to wall/floor
	var _pixelCheck = _subPixel * sign(yspd);
	while !place_meeting (x, y + _pixelCheck, oWall)
		{
			y += _pixelCheck;
		}
		//collision
		yspd = 0;
	}
	
	//move 
	y += yspd
	
	
	
	