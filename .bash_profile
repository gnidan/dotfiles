#
# This script runs for login shells 
#

# Make sure paths, etc. are set up first, then
if [ -f ~/.bashrc ]; then 
	. ~/.bashrc
fi

# Try to determine the type of terminal
# If you will be using a dialup terminal, then replace the 'vt100' in the next
# line with the appropriate terminal name.
# If the terminal you usually use isn't a vt100,  change the 'vt100's below.
defaultterm=vt100

# If you ssh in from cygwin, 'cygwin' is the terminal type.
# tux doesn't know what that is, and ansi works fine for me
if [ ${TERM} = 'cygwin' ] ; then
	export TERM='xterm'
fi

# more may need to be done here, but this usually gets the behvior I like
# if [ -x /sbin/stty ]; then
#     /sbin/stty erase "^h" intr "^C"
# else
#     stty erase "^h" intr "^C"
# fi

# Set the default X server.
# if DISPLAY is not set, the if is true:
#if [ ${DISPLAY:-setdisplay} = setdisplay ]; then
# if REMOTEHOST is set, the if is true:
    #if [ ${REMOTEHOST:-islocal} != islocal ]; then
	#DISPLAY=${REMOTEHOST}:0.0
   #else
	#DISPLAY=${HOSTNAME}:0.0
    #fi
    #export DISPLAY 
#fi

# prompt is set in .bashrc




# Setting PATH for MacPython 2.6
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.6/bin:${PATH}"
export PATH

# Load RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  


