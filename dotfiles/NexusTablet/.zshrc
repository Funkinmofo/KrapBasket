# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export TERM="xterm-256color"
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete chucknorris hitchhiker bofh)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
###Media Aliases
alias nowplaying='playerctl metadata --format "Now playing: {{ artist }} - {{ title }}" | lolcat'
alias mp3stream="cvlc -vvv pulse://alsa_output.pci-0000_00_1b.0.analog-surround-51.monitor --sout \
'#transcode{acodec=mpga,ab=128,channels=2}:standard{access=http,dst=192.168.1.73:8080/pc.mp3}'"
alias glavdesk='glava --desktop'
alias glavrad='glava --desktop --entry=customrad.glsl --force-mod=radial'
alias glavcir='glava --desktop --entry=customrad.glsl --force-mod=circle'
alias nsong='audacious --fwd'
alias lsong='audacious --rew'
alias nwp='nowplaying'

###Network Aliases
alias myip='curl ipinfo.io/ip'
alias localip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"
alias checknet='sudo slurm -z -s -d 1 -i eno1'
alias checkwifi='sudo slurm -z -s -d 1 -i wlp3s0'
alias ports='sudo netstat -tulanp > /home/myrrdin/Documents/Ports.txt'
alias scannet='sudo iftop -n -b -p -P -B'

###Directory Aliases
### uncomment only if not using exa
alias lt='ls --human-readable --size -1 -S --classify'
alias ls='ls -ahl --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias lc='ls --color=auto'
alias dir='ls'
alias copy='cp'
alias move='mv'
alias sl='ls'

###exa specifc commands
#alias ls='exa -al --color=always --group-directories-first' # my preferred listing
#alias la='exa -a --color=always --group-directories-first'  # all files and dirs
#alias ll='exa -l --color=always --group-directories-first'  # long format
#alias lt='exa -aT --color=always --group-directories-first' # tree listing
#alias l='exa -aFx --color=always --group-directories-first'
#alias lk='exa -al --color=always --group-directories-first'

###for typos
alias gerp='echo "You did it *again*!"; grep'

###bash specific
alias reload='source ~/.zshrc'

###system stuff
alias clearmem='sync; sudo sysctl vm.drop_caches=3'
alias nf='neofetch --battery_display --ascii_distro Ubuntu_small'
alias frem='free -m -h'
alias ..='cd ..'
alias path='echo -e ${PATH//:/\\n}'
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
alias sysinfo='sudo inxi -Fxz > /home/myrrdin/Documents/SysInfo.txt'
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"

###convenience items
alias aptu='sudo apt-get update && sudo apt-get upgrade'
alias aptd='sudo SKIP_AUTOSNAP= apt-get update'
alias aptg='sudo SKIP_AUTOSNAP= apt-get upgrade'
alias aptr='sudo SKIP_AUTOSNAP= apt-get remove'
alias clm='clear && nf'
alias clp='clear && nf && hitchhiker'
#alias timeron='echo "TIMER_FORMAT='[%d]'; TIMER_PRECISION=2 ;"'
alias reload='source ~/.zshrc'
alias clr='clear && nf && bofh'
alias batt='upower -i /org/freedesktop/UPower/devices/battery_battery'
alias batstat="batt | grep 'state'"
alias batchg="batt | grep 'percentage'"

###Powerlevel9k Stuff
###POWERLEVEL9K_PROMPT_ON_NEWLINE=true
###POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time status root_indicator dir_writable)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_USER_DEFAULT_FOREGOUND='darkorange'
POWERLEVEL9K_USER_DEFAULT_BACKGROUND='235'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='202'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='237'
POWERLEVEL9K_DIR_HOME_FOREGROUND='238'
POWERLEVEL9K_DIR_HOME_BACKGROUND='208'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='235'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='172'
POWERLEVEL9K_DIR_PATH_HIGHLIGHT_BOLD=true
POWERLEVEL9K_USER_ROOT_FOREGOUND='160'
POWERLEVEL9K_USER_ROOT_BACKGROUND='235'
POWERLEVEL9K_USER_SUDO_FOREGOUND='196'
POWERLEVEL9K_USER_SUDO_BACKGROUND='235'
POWERLEVEL9K_DIR_ETC_FOREGOUND='235'
POWERLEVEL9K_DIR_ETC_BACKGROUND='007'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD='0'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION='2'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='208'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='235'
###sources
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/powerlevel9k/powerlevel9k.zsh-theme

###execute on load
#TIMER_FORMAT='[%d]'; TIMER_PRECISION=2 ;
bofh | lolcat
#eval "$(starship init zsh)"
ps1=❱

