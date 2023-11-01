if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
    ###ALIASES
    eval (thefuck --alias | tr '\n' ';')
    starship init fish | source
    mach

    #function fish_right_prompt 
    #  set_color brcyan -i
    # command echo (playerctl metadata --format {{ title }}🎶) 

    #end
end


###Aliases
alias clp="clear; echo; echo; seq 1 (tput cols) | sort -R | spark | lolcat; echo; echo && mach && nwp"
alias clm="clear; echo; echo; seq 1 (tput cols) | sort -R | spark | lolcat; echo; echo && mach && chuck"
alias clr="clear; echo; echo; seq 1 (tput cols) | sort -R | spark | lolcat; echo; echo && colorscript -e suckless"
alias ccl='clear && colorscript -e suckless'
alias cl='clear; echo; echo; seq 1 $(tput cols) | sort -R | spark | lolcat; echo; echo'


##exa specifc commands
alias ls='exa -al --icons --color=always --group-directories-first' # my preferred listing
alias la='exa -a --icons --color=always --group-directories-first' # all files and dirs
alias ll='exa -l --icons --color=always --group-directories-first' # long format
alias lt='exa -aT --icons --color=always --group-directories-first' # tree listing
alias l='exa -aFx --icons --color=always --group-directories-first'
alias lk='exa -alx --icons --color=always --group-directories-first'
alias li='exa -lg --icons --color=always'
alias lc='exa -a --color=always --group-directories-first'
alias jorlog='journalctl --since "5 minutes ago"'
alias hunta='sudo rkhunter --check --sk'
alias dust='dust -b'
alias bat='batcat'
alias fd='fdfind -H'
alias rodu='rofi -show drun -show-icons'
alias rowi='rofi -show window -show-icons'
alias rofile='rofi -show filebrowser -show-icons'
alias rokey='rofi -show keys -show-icons'
alias rome="rofi -modi 'run,drun,emoji:/home/myrrdin/rofiemoji.sh' -show emoji"
alias lolban='/home/myrrdin/lolban.txt'
alias vimcom="cat /home/myrrdin/vim-commands | rofi -p "Vim-Commands" -theme arthur -dmenu -mesg ''"
alias nalau='sudo nala update && sudo nala upgrade'
alias nalad='sudo SKIP_AUTOSNAP= nala update'
alias nalag='sudo SKIP_AUTOSNAP= nala upgrade'
alias nalar='sudo SKIP_AUTOSNAP= nala remove'
alias kd='cd /home/myrrdin/KrapBasket/dotfiles/'
alias stor='cd /media/myrrdin/Storage/'

function _z_cd
    cd $argv
    or return $status

    commandline -f repaint

    if test "$_ZO_ECHO" = 1
        echo $PWD
    end
end

function z
    set argc (count $argv)

    if test $argc -eq 0
        _z_cd $HOME
    else if begin
            test $argc -eq 1; and test $argv[1] = -
        end
        _z_cd -
    else
        set -l _zoxide_result (zoxide query -- $argv)
        and _z_cd $_zoxide_result
    end
end

function zi
    set -l _zoxide_result (zoxide query -i -- $argv)
    and _z_cd $_zoxide_result
end


abbr -a za 'zoxide add'

abbr -a zq 'zoxide query'
abbr -a zqi 'zoxide query -i'

abbr -a zr 'zoxide remove'
function zri
    set -l _zoxide_result (zoxide query -i -- $argv)
    and zoxide remove $_zoxide_result
end


function _zoxide_hook --on-variable PWD
    zoxide add (pwd -L)
end


alias chkdrv='df -aTh'

###abbr
abbr -a dwn 'cd /home/myrrdin/Downloads'
abbr -a doc 'cd /home/myrrdin/Documents'
abbr -a q exit
abbr -a .... 'cd .. && cd .. && cd .. && cd ..'
abbr -a stor 'cd /media/myrrdin/Storage'
abbr -a krap 'cd /home/myrrdin/KrapBasket'
abbr lp 'exa -abghHliS'
