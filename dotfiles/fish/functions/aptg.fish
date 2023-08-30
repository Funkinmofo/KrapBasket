function aptg --wraps='sudo SKIP_AUTOSNAP= apt upgrade' --description 'alias aptg sudo SKIP_AUTOSNAP= apt upgrade'
  sudo SKIP_AUTOSNAP= apt upgrade $argv; 
end
