if status is-interactive
    #Commands to run in interactive sessions can go here

set fish_greeting
 # echo "I'm completely operational, and all my circuits are functioning perfectly."
 set_color normal
end
#if status is-login
  #  contains ~/.local/bin $PATH
  #  or set PATH ~/.local/bin $PATH
#end
######
#
# Main file for fish command completions. This file contains various
# common helper functions for the command completions. All actual
# completions are located in the completions subdirectory.
#
# share/config.fish, generated from share/config.fish.in by the Makefile. DO NOT MANUALLY EDIT THIS FILE!

#
# Set default field separators
#

set -g IFS \n\ \t

#
# Set default search paths for completions and shellscript functions
# unless they already exist
#

set -l configdir ~/.config

if set -q XDG_CONFIG_HOME
	set configdir $XDG_CONFIG_HOME
end

# These are used internally by fish in various places
if not set -q __fish_datadir
	set -g __fish_datadir /usr/share/fish
end

if not set -q __fish_sysconfdir
	set -g __fish_sysconfdir /etc/fish
end

# Set up function and completion paths. Make sure that the fish
# default functions/completions are included in the respective path.

if not set -q fish_function_path
	set -U fish_function_path $configdir/fish/functions    /etc/fish/functions    /usr/share/fish/functions
end

if not contains /usr/share/fish/functions $fish_function_path
	set fish_function_path[-1] /usr/share/fish/functions
end

if not set -q fish_complete_path
	set -U fish_complete_path $configdir/fish/completions  /etc/fish/completions  /usr/share/fish/completions
end

if not contains /usr/share/fish/completions $fish_complete_path
	set fish_complete_path[-1] /usr/share/fish/completions
end

set __fish_help_dir /usr/share/doc/fish

#
# This is a Solaris-specific test to modify the PATH so that
# Posix-conformant tools are used by default. It is separate from the
# other PATH code because this directory needs to be prepended, not
# appended, since it contains POSIX-compliant replacements for various
# system utilities.
#

if test -d /usr/xpg4/bin
	if not contains /usr/xpg4/bin $PATH
		set PATH /usr/xpg4/bin $PATH
	end
end

#
# Add a few common directories to path, if they exists. Note that pure
# console programs like makedep sometimes live in /usr/X11R6/bin, so we
# want this even for text-only terminals.
#

set -l path_list /bin /usr/bin /usr/X11R6/bin /usr/local/bin /usr/bin 

# Root should also have the sbin directories in the path
switch $USER
	case root
	set path_list $path_list /sbin /usr/sbin /usr/local/sbin /usr/sbin
end

for i in $path_list
	if not contains $i $PATH
		if test -d $i
			set PATH $PATH $i
		end
	end
end

#
# Launch debugger on SIGTRAP
#
function fish_sigtrap_handler --on-signal TRAP --no-scope-shadowing --description "Signal handler for the TRAP signal. Lanches a debug prompt."
	breakpoint
end

#
# Whenever a prompt is displayed, make sure that interactive
# mode-specific initializations have been performed.
# This handler removes itself after it is first called.
#
function __fish_on_interactive --on-event fish_prompt
	__fish_config_interactive
	functions -e __fish_on_interactive
end
###

# name: sashimi
function fish_prompt
  set -l last_status $status
  set -l cyan (set_color -o cyan)
  set -l yellow (set_color -o yellow)
  set -g red (set_color -o red)
  set -g blue (set_color -o blue)
  set -l green (set_color -o green)
  set -g normal (set_color normal)
     set -l cwd $cyan(basename (prompt_pwd))
    set -g whitespace ' '
    set pathbracket "∥"

  if test $last_status = 0
    set initial_indicator "$green◆"
    set status_indicator "$normal❯$cyan❯$green❯"
  else
    set initial_indicator "$red✖ $last_status"
    set status_indicator "$red❯$red❯$red❯"
  end
  

if test $CMD_DURATION
        #Show duration of the last command in seconds
set duration (echo "$CMD_DURATION 60" | awk '{printf "%.2fs", $1}')
       echo "$yellow◆$cyan∥$duration∥$yellow◆$normal"
    end


    # Notify if a command took more than 5 minutes
 # if [ "$CMD_DURATION" -lt 60 ]
   # echo The last command took "$CMD_DURATION" seconds.
  #end
#function printtime --on-event fish_postexec
   # echo [ $CMD_DURATION ]
#end
   # echo -n $pathbracket$PWD$pathbracket

  echo -n $initial_indicator $whitespace $cwd $whitespace $status_indicator $whitespace
end

alias myip='curl ipinfo.io/ip'
alias lt='ls --human-readable --size -1 -S --classify'
alias lc='ls --color=auto'
alias dir='ls'
alias copy='cp'
alias move='mv'
alias gerp='echo "You did it *again*!"; grep'
alias sl='ls'
alias localip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"
alias clearmem='sync; sudo sysctl vm.drop_caches=3'
alias nf='neofetch --battery_display --ascii_distro Ubuntu_small'
alias checknet='sudo slurm -z -s -d 1 -i wlan0'
alias ..='cd ..' 
alias frem='free -m -h'
alias clm='clear & nf'

