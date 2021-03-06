# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# specific to the solus install:
source /usr/share/defaults/etc/profile
#

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's local private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi


# startx on login
# xdg vtnr is the vertual terminal number -eq equals to 1

# if [ -f "$HOME/.xinitrc" ] ; then
# 	[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && startx $HOME/.xinitrc
# else
# 	[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && startx
# fi


if [ -f "/bin/vim" ] ; then
	export EDITOR="/usr/bin/vim"
fi
