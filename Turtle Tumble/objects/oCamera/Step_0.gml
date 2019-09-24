if(instance_exists(follow))
{
	xCam = follow.x;
	yCam = follow.y;
}

x += (xCam - x)/25;
y += (yCam - y)/25;

x = clamp(x,viewW,room_width - viewW)
y = clamp(y,viewH,room_width - viewH)

camera_set_view_pos(cam,x-viewW,y-viewH);