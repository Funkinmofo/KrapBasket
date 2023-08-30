function aptd --wraps='sudo SKIP_AUTOSNAP= apt update' --description 'alias aptd sudo SKIP_AUTOSNAP= apt update'
  sudo SKIP_AUTOSNAP= apt update $argv; 
end
