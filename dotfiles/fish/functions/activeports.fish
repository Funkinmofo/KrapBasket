function activeports --wraps='sudo netstat -tunlp' --description 'alias activeports sudo netstat -tunlp'
  sudo netstat -tunlp $argv
        
end
