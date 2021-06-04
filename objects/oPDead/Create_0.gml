/// @desc Variables and Sound

hsp = 0;
vsp = 0;
grv = 0.2;
done = 0;

ScreenShake(6,60);
image_speed = 0;
image_index = 0;
audio_sound_pitch(snDeath,choose(0.8,1.0,1.2));
audio_play_sound(snDeath,5,false);
game_set_speed(30,gamespeed_fps);
with (oCamera) follow = other.id;
