function chuck --wraps='~/.local/bin/./chuck' --wraps='~/.local/bin/./chuck | lolcat' --wraps='~/.local/bin/./chuck -n| lolcat' --description 'alias chuck ~/.local/bin/./chuck -n| lolcat'
  ~/.local/bin/./chuck -n| lolcat $argv
        
end
