/// @desc Size Variables and Mode Setup

w = display_get_gui_width();
h = display_get_gui_height();
h_half = h * 0.5;
enum TRANS_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO,
	ABOUT
}
mode = TRANS_MODE.INTRO;
percent = 1;
target = room;
