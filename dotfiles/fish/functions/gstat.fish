function gstat --wraps='git status -u no' --description 'alias gstat git status -u no'
  git status -u no $argv
        
end
