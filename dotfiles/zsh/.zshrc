# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

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
plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete chucknorris hitchhiker bofh sudo web-search copypath copyfile copybuffer dirhistory)

export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
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
#alias lt='ls --human-readable --size -1 -S --classify'
#alias ls='ls -ahl --color=auto'
#alias ll='ls -alF'
#alias la='ls -A'
#alias lc='ls --color=auto'
alias dir='ls'
alias copy='cp'
alias move='mv'
alias sl='ls'
alias ...='cd .. && cd ..'
###exa specifc commands
alias ls='exa -al --icons --color=always --group-directories-first' # my preferred listing
alias la='exa -a --icons --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --icons --color=always --group-directories-first'  # long format
alias lt='exa -aT --icons --color=always --group-directories-first' # tree listing
alias l='exa -aFx --icons --color=always --group-directories-first'
alias lk='exa -alx --icons --color=always --group-directories-first'
alias li='exa -lg --icons --color=always'
alias lc='exa -a --color=always --group-directories-first' 

###for typos
alias gerp='echo "You did it *again*!"; grep'

###bash specific
alias reload='source ~/.bashrc && source ~/.bash_aliases'

###system stuff
alias clearmem='sync; sudo sysctl vm.drop_caches=3'
alias nf='neofetch'
alias frem='free -m -h'
alias ..='cd ..'
alias path='echo -e ${PATH//:/\\n}'
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
alias sysinfo='sudo inxi -Fxz > /home/myrrdin/Documents/SysInfo.txt'
alias mach='/home/myrrdin/macchina/target/release/./macchina'
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"
alias nvim='~/Apps/./nvim.appimage'

###convenience items
alias aptu='sudo apt update && sudo apt upgrade'
alias aptd='sudo SKIP_AUTOSNAP= apt update'
alias aptg='sudo SKIP_AUTOSNAP= apt upgrade'
alias aptr='sudo SKIP_AUTOSNAP= apt remove'
alias wipegame='cd /home/myrrdin/Apps/wipeout-rewrite-master'
alias clm='clear && mach'
alias clp='clear && mach && nwp'
alias reload='source ~/.zshrc'
alias gstat='git status -u no'
alias gcomm='git commit -m'
alias gits='ssh -T git@github.com'
alias gpush='git push'
alias gadd='git add'
alias clr='clear && colorscript random && chuck | lolcat'
alias tildesk='tilix --session=/home/myrrdin/.tilix/desktopterm.json'
alias tilpref='tilix --preferences'
alias tilquad='tilix --session=/home/myrrdin/.tilix/quad.json'
alias tilhalf='tilix --session=/home/myrrdin/.tilix/half.json'
alias tilfull='tilix --session=/home/myrrdin/.tilix/full.json'
alias tilsplit='tilix --session=/home/myrrdin/.tilix/split.json'
alias updots='~/.Backup_Dots'
alias fg1='fg %1'
alias fg2='fg %2'
alias fg3='fg %3'
alias ack='ack -o'
alias perfdata='sudo perf record -g -a sleep 10'
alias perfread-'sudo perf report'
alias activeports='sudo netstat -tunlp'
alias shortports='sudo lsof -nP -iTCP -sTCP:LISTEN'
alias openports='sudo ss -tunlp'
alias svcall='service --status-all'
alias constat='netstat --inet -n'
alias sysactive='systemctl --type=service --state=running | grep active'
alias jorlog='journalctl --since "5 minutes ago"'
alias hunta='sudo rkhunter --check --sk'
alias dust='dust -b'
alias bat='batcat'

###Powerlevel9k Stuff
###POWERLEVEL9K_PROMPT_ON_NEWLINE=true
###POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir dir_writable root_indicator)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time status vcs)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_USER_DEFAULT_FOREGROUND='0'
POWERLEVEL9K_USER_DEFAULT_BACKGROUND='0'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='166'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='237'
POWERLEVEL9K_DIR_HOME_FOREGROUND='238'
POWERLEVEL9K_DIR_HOME_BACKGROUND='208'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='235'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='172'
POWERLEVEL9K_DIR_PATH_HIGHLIGHT_BOLD=true
#POWERLEVEL9K_USER_ROOT_FOREGOUND='170'
#POWERLEVEL9K_USER_ROOT_BACKGROUND='138'
#POWERLEVEL9K_USER_SUDO_FOREGROUND='009'
#POWERLEVEL9K_USER_SUDO_BACKGROUND='008'
#POWERLEVEL9K_SUDO_FOREGROUND='009'
#POWERLEVEL9K_SUDO_BACKGROUND='008'
POWERLEVEL9K_DIR_ETC_FOREGROUND='235'
POWERLEVEL9K_DIR_ETC_BACKGROUND='007'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD='0'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION='2'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='208'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='235'
#POWERLEVEL9K_CONTEXT_TEMPLATE='%n'
#POWERLEVEL9K_CONTEXT_TEMPLATE_FOREGROUND='208'
#POWERLEVEL9K_CONTEXT_TEMPLATE_BACKGROUND='235'
#POWERLEVEL9K_CONTEXT_USER_SUDO_FOREGROUND='009'
#POWERLEVEL9K_CONTEXT_USER_SUDO_BACKGROUND='008'
#POWERLEVEL9K_CONTEXT_DEFAULT_USER_SUDO_FOREGROUND='009'
#POWERLEVEL9K_CONTEXT_DEFAULT_USER_SUDO_BACKGROUND='008'
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#757575'

###sources
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source /usr/share/powerlevel9k/powerlevel9k.zsh-theme
source /home/myrrdin/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
###execute on load
#TIMER_FORMAT='[%d]'; TIMER_PRECISION=2 ;

#eval "$(starship init zsh)"
#ps1=❱

function mdcd {
    command mkdir $1 && cd $1
}

##super grep
function fullgrip {
command grep --with-filename --line-number --color=always "$1" "$2"

 }

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

_z_cd() {
    cd "$@" || return "$?"

    if [ "$_ZO_ECHO" = "1" ]; then
        echo "$PWD"
    fi
}

z() {
    if [ "$#" -eq 0 ]; then
        _z_cd ~
    elif [ "$#" -eq 1 ] && [ "$1" = '-' ]; then
        if [ -n "$OLDPWD" ]; then
            _z_cd "$OLDPWD"
        else
            echo 'zoxide: $OLDPWD is not set'
            return 1
        fi
    else
        _zoxide_result="$(zoxide query -- "$@")" && _z_cd "$_zoxide_result"
    fi
}

zi() {
    _zoxide_result="$(zoxide query -i -- "$@")" && _z_cd "$_zoxide_result"
}


alias za='zoxide add'

alias zq='zoxide query'
alias zqi='zoxide query -i'

alias zr='zoxide remove'
zri() {
    _zoxide_result="$(zoxide query -i -- "$@")" && zoxide remove "$_zoxide_result"
}


_zoxide_hook() {
    zoxide add "$(pwd -L)"
}

chpwd_functions=(${chpwd_functions[@]} "_zoxide_hook")
export PATH=$PATH:$HOME/.cargo/bin
clm
bofh | lolcat
