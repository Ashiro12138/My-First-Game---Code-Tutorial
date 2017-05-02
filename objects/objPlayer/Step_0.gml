if(keyboard_check(ord("W"))){
	if(place_meeting(x,y-4,objWall)){
		while(!place_meeting(x,y-1,objWall)){
			y -= 1;
		}
	}else{
		y -= 4;
	}
}

if(keyboard_check(ord("S"))){
	if(place_meeting(x,y+4,objWall)){
		while(!place_meeting(x,y+1,objWall)){
			y += 1;
		}
	}else{
		y += 4;
	}
}

if(keyboard_check(ord("A"))){
	if(place_meeting(x-4,y,objWall)){
		while(!place_meeting(x-1,y,objWall)){
			x -= 1;
		}
	}else{
		x -= 4;
	}
}

if(keyboard_check(ord("D"))){
	if(place_meeting(x+4,y,objWall)){
		while(!place_meeting(x+1,y,objWall)){
			x += 1;
		}
	}else{
		x += 4;
	}
}

image_angle = point_direction(x,y,mouse_x,mouse_y);

if(mouse_check_button(mb_left)&&cooldown<1){
	instance_create_layer(x,y,"BulletsLayer",objBullet);
	cooldown = 10;
}

cooldown -= 1;