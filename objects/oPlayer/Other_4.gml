/// @desc Auto Save

audio_sound_gain(snMusic,0.5,0);
audio_play_sound(snBackground,5,true);
audio_sound_gain(snBackground,0.2,0);

// Overwrite Old Save

if (file_exists(SAVEFILE)) file_delete(SAVEFILE);

// Create New Save

var file;
file = file_text_open_write(SAVEFILE);
file_text_write_real(file,room);
file_text_write_real(file,global.kills);
file_text_write_real(file,global.hasgun);
file_text_write_real(file,global.coins);
file_text_close(file);
