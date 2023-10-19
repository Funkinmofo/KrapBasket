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
alias updots='~/.Backup_Dots'
alias ...='cd .. && cd ,,'
alias nvim='~/Apps/./nvim.appimage'
alias fg1='fg %1'
alias fg2='fg %2'
alias fg3='fg %3'

###github
alias gstat='git status -u no'
alias gcomm='git commit -m'
alias gits='ssh -T git@github.com'
alias gpush='git push'
alias gadd='git add'

###convenience items
alias aptu='sudo apt update && sudo apt upgrade'
alias aptd='sudo SKIP_AUTOSNAP= apt update'
alias aptg='sudo SKIP_AUTOSNAP= apt upgrade'
alias aptr='sudo SKIP_AUTOSNAP= apt remove'
alias wipegame='cd /home/myrrdin/Apps/wipeout-rewrite-master'
alias skip='SKIP_AUTOSNAP='
alias clm='clear && mach && chuck'
alias clp='clear && nf && nowplaying'
alias clr='clear && colorscript random && chuck'
alias chuck='chuck -n | lolcat'
alias tildesk='tilix --session=/home/myrrdin/.tilix/desktopterm.json'
alias tilpref='tilix --preferences'
alias tilquad='tilix --session=/home/myrrdin/.tilix/quad.json'
alias tilhalf='tilix --session=/home/myrrdin/.tilix/half.json'
alias tilfull='tilix --session=/home/myrrdin/.tilix/full.json'
alias tilsplit='tilix --session=/home/myrrdin/.tilix/split.json'
alias ack='ack -o'
alias perfdata='sudo perf record -g -a sleep 10'
alias perfread='sudo perf report'
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
