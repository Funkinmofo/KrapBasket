function startsound --wraps='systemctl --user restart pulseaudio' --description 'alias startsound systemctl --user restart pulseaudio'
  systemctl --user restart pulseaudio $argv
        
end
