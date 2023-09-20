function openports --wraps='sudo ss -tunlp' --description 'alias openports sudo ss -tunlp'
  sudo ss -tunlp $argv
        
end
