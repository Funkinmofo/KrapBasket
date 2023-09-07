function gits --wraps='ssh -T git@github.com' --description 'alias gits ssh -T git@github.com'
  ssh -T git@github.com $argv
        
end
