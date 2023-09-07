function gcomm --wraps='git commit -m' --description 'alias gcomm git commit -m'
  git commit -m $argv
        
end
