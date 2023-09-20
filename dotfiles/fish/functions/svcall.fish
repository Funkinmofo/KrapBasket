function svcall --wraps='service --status-all' --description 'alias svcall service --status-all'
  service --status-all $argv
        
end
