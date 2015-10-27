# Load git-prompt to get access to __git_ps1
source /usr/local/etc/bash_completion.d/git-prompt.sh

# Setting for the new UTF-8 terminal support in Lion
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Editor
export EDITOR='sublime -w'

# Ls colors
export CLICOLOR=1

# Aliases
alias mount_dev36="mkdir /Volumes/dev36; sshfs dev36:/home/marc /Volumes/dev36"
alias unmount_dev36="umount -f /Volumes/dev36"

#ps1
GIT_PS1_SHOWDIRTYSTATE=true
function ps1 {
	local BLACK="\[\033[0;30m\]"
	local BLACKBOLD="\[\033[1;30m\]"
	local RED="\[\033[0;31m\]"
	local REDBOLD="\[\033[1;31m\]"
	local GREEN="\[\033[0;32m\]"
	local GREENBOLD="\[\033[1;32m\]"
	local YELLOW="\[\033[0;33m\]"
	local YELLOWBOLD="\[\033[1;33m\]"
	local BLUE="\[\033[0;34m\]"
	local BLUEBOLD="\[\033[1;34m\]"
	local PURPLE="\[\033[0;35m\]"
	local PURPLEBOLD="\[\033[1;35m\]"
	local CYAN="\[\033[0;36m\]"
	local CYANBOLD="\[\033[1;36m\]"
	local WHITE="\[\033[0;37m\]"
	local WHITEBOLD="\[\033[1;37m\]"

	export PS1="\[\033[00m\]\u@\h $BLUEBOLD\w$REDBOLD\$(__git_ps1)\[\033[00m\] "
}

ps1
