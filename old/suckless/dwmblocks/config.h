//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
    /*Icon*/    /*Command*/     /*Update Interval*/ /*Update Signal*/
    {"",    "cat /tmp/recordingicon 2>/dev/null",   0,  9},
    {"",    "sb-kernel",    0,   2},
    {"",    "sb-cpu",       1,  18},
    {"",    "sb-memory",    1,  14},
    {"",    "sb-disk",      1,  12},
    {"",    "sb-nettraf",   1,  16},
    {"",    "sb-volume",    1,  10},
    {"",    "sb-music",     0,  11},
    {"",    "sb-clock",     1,   1},
    {"",    "sb-doppler",   0,  19},
};

//Sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char *delim = " \\\\ ";

// Have dwmblocks automatically recompile and run after editing this file in
// vim with the following vimrc line:

// autocmd BufWritePost ~/.config/suckless/dwmblocks/config.h !cd ~/.config/suckless/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & }
