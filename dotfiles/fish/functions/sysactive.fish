function sysactive --wraps='systemctl --type=service --state=running | grep active' --wraps='systemctl --type=service --state=running | grep active' --description 'alias sysactive systemctl --type=service --state=running | grep active'
  systemctl --type=service --state=running | grep active $argv
        
end
