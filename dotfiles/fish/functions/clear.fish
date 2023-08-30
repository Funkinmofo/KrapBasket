function clear --wraps='clear; echo; seq 1 (tput cols) | sort -R | spark | lolcat; echo; echo' --description 'alias clear clear; echo; seq 1 (tput cols) | sort -R | spark | lolcat; echo; echo'
  clear; echo; seq 1 (tput cols) | sort -R | spark | lolcat; echo; echo $argv; 
end
