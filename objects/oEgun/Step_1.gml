/// @desc Gun and Shooting

x = owner.x+0;
y = owner.y+0;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if (instance_exists(oPlayer))
{
	if (oPlayer.x < x) image_yscale = -image_yscale;
	if (point_distance(oPlayer.x,oPlayer.y,x,y) < 600) // Enemy AI Awareness Distance
	{
		image_angle = point_direction(x,y,oPlayer.x,oPlayer.y);
		countdown--;
		if (countdown <= 0)
		{
			if (!collision_line(x,y,oPlayer.x,oPlayer.y,oWall,false,false))
			{
				countdown = countdownrate;
				audio_sound_pitch(snShot,choose(0.8,1.0,1.2));
				audio_play_sound(snShot,5,false);
				with (instance_create_layer(x,y,"Bullets",oEbullet))
				{
					spd = 5;
					direction = other.image_angle + random_range(-3,3);
					image_angle = direction;
				}
			}
		}
	}
}