function console --wraps='sudo msfconsole' --description 'alias console sudo msfconsole'
  sudo msfconsole $argv; 
end
