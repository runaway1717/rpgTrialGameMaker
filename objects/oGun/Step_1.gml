x = oPlayer.x;
y = oPlayer.y;

// point to the direction of mouse pointer
image_angle = point_direction(x, y, mouse_x, mouse_y);

// making sure that bullet fires every 5 frames instead of every frame
firing_delay--;
recoil = max(0, recoil - 1);
if(mouse_check_button(mb_left) && firing_delay < 0)
{
	firing_delay = 5;
	recoil = 4;
	// anything inside with() is executed only for the object mentioned in the parameter
	// which is here, an instance of oBullet
	with(instance_create_layer(x, y, "Bullets", oBullet))
	{
		speed =	25;
		// dirction only affects the direction of the movement not the angle in which
		// it is drawn
		direction = other.image_angle + random_range(-3, 3); // other here refers to oGun
		image_angle = direction;
	}
}

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

if (image_angle > 90 && image_angle < 270) {
	image_yscale = -1; // flip image upside down
}
else 
{
	image_yscale = 1;
}

