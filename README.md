# Configs
This is my configs files (.dotfiles and some other configs files too).


#For powerline font works with urxvt :
URxvt must be compiled with --enable-unicode3.
Then install the font as described here :
https://github.com/powerline/fonts
Then you can find your font directory where URxvt will search the fonts with
xset -q |grep -i Font
Next, you have to move the recent installed font (/home/shrom/.local/share/fonts) to one of directory found before.
Then you have to check in your Xdefault/Xressources if the font is called correctly.
