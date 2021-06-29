/// @desc Continue

if (!file_exists(SAVEFILE))
{
	SlideTransition(TRANS_MODE.NEXT);	
}
else
{
	var file = file_text_open_read(SAVEFILE);
	var target = file_text_read_real(file);
	global.kills = file_text_read_real(file);
	global.hasgun = file_text_read_real(file);
	global.coins = file_text_read_real(file);
	file_text_close(file);
	SlideTransition(TRANS_MODE.GOTO,target);
}