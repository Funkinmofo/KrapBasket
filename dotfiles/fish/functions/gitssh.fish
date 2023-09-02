function gitssh --wraps='ssh -T git@github.com/Funkinmofo/KrapBasket.git' --wraps='ssh -T git@github.com' --description 'alias gitssh ssh -T git@github.com'
  ssh -T git@github.com $argv; 
end
