function localip --wraps=ifconfig\ \|\ sed\ -En\ \'s/127.0.0.1//\;s/.\*inet\ \(addr:\)\?\(\(\[0-9\]\*\\.\)\{3\}\[0-9\]\*\).\*/\\2/p\' --description alias\ localip\ ifconfig\ \|\ sed\ -En\ \'s/127.0.0.1//\;s/.\*inet\ \(addr:\)\?\(\(\[0-9\]\*\\.\)\{3\}\[0-9\]\*\).\*/\\2/p\'
  ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p' $argv; 
end
