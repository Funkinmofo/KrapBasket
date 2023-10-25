# Personal Zsh configuration file. It is strongly recommended to keep all
# shell customization and configuration (including exported environment
# variables such as PATH) in this file or in files sourced from it.
#
# Documentation: https://github.com/romkatv/zsh4humans/blob/v5/README.md.

# Periodic auto-update on Zsh startup: 'ask' or 'no'.
# You can manually run `z4h update` to update everything.
zstyle ':z4h:' auto-update      'no'
# Ask whether to auto-update this often; has no effect if auto-update is 'no'.
zstyle ':z4h:' auto-update-days '28'

# Keyboard type: 'mac' or 'pc'.
zstyle ':z4h:bindkey' keyboard  'pc'

# Don't start tmux.
zstyle ':z4h:' start-tmux       no

# Mark up shell's output with semantic information.
zstyle ':z4h:' term-shell-integration 'yes'

# Right-arrow key accepts one character ('partial-accept') from
# command autosuggestions or the whole thing ('accept')?
zstyle ':z4h:autosuggestions' forward-char 'accept'

# Recursively traverse directories when TAB-completing files.
zstyle ':z4h:fzf-complete' recurse-dirs 'no'

# Enable direnv to automatically source .envrc files.
zstyle ':z4h:direnv'         enable 'no'
# Show "loading" and "unloading" notifications from direnv.
zstyle ':z4h:direnv:success' notify 'yes'

# Enable ('yes') or disable ('no') automatic teleportation of z4h over
# SSH when connecting to these hosts.
zstyle ':z4h:ssh:example-hostname1'   enable 'yes'
zstyle ':z4h:ssh:*.example-hostname2' enable 'no'
# The default value if none of the overrides above match the hostname.
zstyle ':z4h:ssh:*'                   enable 'no'

# Send these files over to the remote host when connecting over SSH to the
# enabled hosts.
zstyle ':z4h:ssh:*' send-extra-files '~/.nanorc' '~/.env.zsh'

# Clone additional Git repositories from GitHub.
#
# This doesn't do anything apart from cloning the repository and keeping it
# up-to-date. Cloned files can be used after `z4h init`. This is just an
# example. If you don't plan to use Oh My Zsh, delete this line.
z4h install ohmyzsh/ohmyzsh || return

# Install or update core components (fzf, zsh-autosuggestions, etc.) and
# initialize Zsh. After this point console I/O is unavailable until Zsh
# is fully initialized. Everything that requires user interaction or can
# perform network I/O must be done above. Everything else is best done below.
z4h init || return

# Extend PATH.
path=(~/bin $path)

# Export environment variables.
export GPG_TTY=$TTY

# Source additional local files if they exist.
z4h source ~/.env.zsh

# Use additional Git repositories pulled in with `z4h install`.
#
# This is just an example that you should delete. It does nothing useful.
#z4h source ohmyzsh/ohmyzsh/lib/diagnostics.zsh  # source an individual file
#z4h load ohmyzsh/ohmyzsh/plugins/bofh/           # load a plugin
z4h load ohmyzsh/ohmyzsh/plugins/hitchhiker/

# Define key bindings.
z4h bindkey z4h-backward-kill-word  Ctrl+Backspace     Ctrl+H
z4h bindkey z4h-backward-kill-zword Ctrl+Alt+Backspace

z4h bindkey undo Ctrl+/ Shift+Tab  # undo the last command line change
z4h bindkey redo Alt+/             # redo the last undone command line change

z4h bindkey z4h-cd-back    Alt+Left   # cd into the previous directory
z4h bindkey z4h-cd-forward Alt+Right  # cd into the next directory
z4h bindkey z4h-cd-up      Alt+Up     # cd into the parent directory
z4h bindkey z4h-cd-down    Alt+Down   # cd into a child directory

# Autoload functions.
autoload -Uz zmv

# Define functions and completions.
function md() { [[ $# == 1 ]] && mkdir -p -- "$1" && cd -- "$1" }
compdef _directories md

# Define named directories: ~w <=> Windows home directory on WSL.
[[ -z $z4h_win_home ]] || hash -d w=$z4h_win_home

# Define aliases.
#alias tree='tree -a -I .git'
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
alias clm='clear; echo; echo; (seq 1 $(tput cols)) | sort -R | spark | lolcat; echo; echo && mach'
alias clp='clear; echo; echo; (seq 1 $(tput cols)) | sort -R | spark | lolcat; echo; echo && mach && nwp'
alias clr='clear; echo; echo; (seq 1 $(tput cols)) | sort -R | spark | lolcat; echo; echo && colorscript random && chuck -n | lolcat'
alias cl='clear; echo; echo; (seq 1 $(tput cols)) | sort -R | spark | lolcat; echo; echo'
alias reload='source ~/.zshrc'
alias gstat='git status'
alias gcomm='git commit -m'
alias gits='ssh -T git@github.com'
alias gpush='git push'
alias gadd='git add'
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
alias fd='fdfind -H'
alias chkdrv='df -aTh'

# Add flags to existing aliases.
#alias ls="${aliases[ls]:-ls} -A"

# Set shell options: http://zsh.sourceforge.net/Doc/Release/Options.html.
setopt glob_dots     # no special treatment for file names with a leading dot
setopt no_auto_menu  # require an extra TAB press to open the completion menu

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
mach

