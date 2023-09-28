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


##exa specifc commands
alias ls='exa -al --icons --color=always --group-directories-first' # my preferred listing
alias la='exa -a --icons --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --icons --color=always --group-directories-first'  # long format
alias lt='exa -aT --icons --color=always --group-directories-first' # tree listing
alias l='exa -aFx --icons --color=always --group-directories-first'
alias lk='exa -alx --icons --color=always --group-directories-first'
alias li='exa -lg --icons --color=always'


