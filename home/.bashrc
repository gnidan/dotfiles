# ~/.bashrc: executed by bash(1) for non-login shells.


###############################################################################
# Terminal friendliness
#
###############################################################################

# vi mode
set -o vi

set -o ignoreeof

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi


###############################################################################
# History
#
###############################################################################

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


###############################################################################
# Colors
#
###############################################################################

# check for color support
if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
  color_prompt=yes
else
  color_prompt=
fi

if [ "$TERM" = screen ]; then
  color_prompt=yes
fi

if [ -f "$HOME/.bash_colors" ]; then
  . "$HOME/.bash_colors"
fi

if [ "$force_color" == "y*" ]; then
  color_prompt=yes
fi

if [ "$force_no_color" == "y*" ]; then
  color_prompt=no
fi


###############################################################################
# Set the prompt
#
###############################################################################

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi
PS1_root='${debian_chroot:+($debian_chroot)}'

if [ "$color_prompt" = yes ]; then
  case "$HOSTNAME" in
      tempest*)
        HOST_COLOR="$BBlue$On_White";;
      snark*)
        HOST_COLOR="$Purple";;
      *)
        HOST_COLOR="$IGreen";;
  esac

  USER_COLOR="$IGreen"

  PS1='$'
  PS1_user="$USER_COLOR\u"
  PS1_host="$HOST_COLOR\h"
  PS1_prompt="$BBlue\w $White$ $Color_Off"
  PS1="$PS1_root($PS1_host$White) $PS1_user$White: $PS1_prompt"
else
  PS1="$PS1_root(\h) \u: \w $ "
fi


###############################################################################
# Program settings
#
###############################################################################

# Alias definitions.
if [ -f $HOME/.bash_aliases ]; then
    . $HOME/.bash_aliases
fi

export PATH="/home/gnidan/.gem/ruby/1.9.1/bin:$PATH"

# Man page coloring

man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
			man "$@"
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.

[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source "$HOME/.pythonbrew/etc/bashrc"

