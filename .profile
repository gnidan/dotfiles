# ~/.profile: executed by the command interpreter for login shells.

###############################################################################
# Keymappings
#
###############################################################################

xmodmap -e 'remove Lock = Caps_Lock'
xmodmap -e 'keysym Caps_Lock = Control_L'
xmodmap -e 'add Control = Control_L'


###############################################################################
# PATH
#
###############################################################################

if [ $PATH != "*~/bin*" ] && [ -d "~/bin" ]; then
  export PATH="~/bin:$PATH"
fi

if [ $PATH != "*~/.bin*" ] && [ -d "~/.bin" ]; then
  export PATH="~/.bin:$PATH"
fi


###############################################################################
# Defaults
#
###############################################################################

if [ -n `which xrdb` -a -n "$DISPLAY" ]; then
  xrdb ~/.Xdefaults
fi

export EDITOR="vim"
export TERMINAL="xterm"

