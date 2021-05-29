/// @desc Destroy Crate

with (mywall) instance_destroy();
audio_sound_pitch(snBreak,choose(0.8,1.0,1.2));
audio_play_sound(snBreak,10,false);