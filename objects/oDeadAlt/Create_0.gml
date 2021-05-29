/// @desc Variables and Sound

hsp = 0;
vsp = 0;
grv = 0.3;
done = 0;

ScreenShake(6,25);
image_speed = 0;
audio_sound_pitch(snDeath,choose(0.8,1.0,1.2));
audio_play_sound(snDeath,5,false);