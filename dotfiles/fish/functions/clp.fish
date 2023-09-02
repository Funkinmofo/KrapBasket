function clp --wraps='clear; echo; echo; seq 1 (tput cols) | sort -R | spark | lolcat; echo; echo && mach && nwp' --description 'alias clp clear; echo; echo; seq 1 (tput cols) | sort -R | spark | lolcat; echo; echo && mach && nwp'
  clear; echo; echo; seq 1 (tput cols) | sort -R | spark | lolcat; echo; echo && mach && nwp $argv; 
end
