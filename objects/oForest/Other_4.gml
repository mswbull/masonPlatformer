// @desc Music and Background Sound 

if (audio_is_playing(global.backgroundcave)) 
{
	audio_stop_sound(global.backgroundcave);
}

audio_sound_gain(global.music,0.5,0);
audio_play_sound(global.backgroundforest,5,true);
audio_sound_gain(global.backgroundforest,0.2,0);