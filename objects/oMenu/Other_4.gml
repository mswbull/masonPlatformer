/// @desc Music

if (!audio_is_playing(global.music)) 
{
	audio_play_sound(global.music,5,true);
}