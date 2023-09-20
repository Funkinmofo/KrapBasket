function shortports --wraps='sudo lsof -nP -iTCP -sTCP:LISTEN' --description 'alias shortports sudo lsof -nP -iTCP -sTCP:LISTEN'
  sudo lsof -nP -iTCP -sTCP:LISTEN $argv
        
end
