// @desc Music and Background Sound 

if (audio_is_playing(global.backgroundforest)) 
{
	audio_stop_sound(global.backgroundforest);
}

audio_sound_gain(global.music,0.5,0);
audio_play_sound(global.backgroundcave,5,true);
audio_sound_gain(global.backgroundcave,0.2,0);