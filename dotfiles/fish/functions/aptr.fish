function aptr --wraps='sudo SKIP_AUTOSNAP= apt remove' --description 'alias aptr sudo SKIP_AUTOSNAP= apt remove'
  sudo SKIP_AUTOSNAP= apt remove $argv; 
end
