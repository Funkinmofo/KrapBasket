function clm --wraps='clear; echo; echo; seq 1 (tput cols) | sort -R | spark | lolcat; echo; echo && mach' --description 'alias clm clear; echo; echo; seq 1 (tput cols) | sort -R | spark | lolcat; echo; echo && mach'
  clear; echo; echo; seq 1 (tput cols) | sort -R | spark | lolcat; echo; echo && mach $argv; 
end
