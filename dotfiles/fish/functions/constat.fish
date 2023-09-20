function constat --wraps='netstat --inet' --wraps='netstat --inet -n' --description 'alias constat netstat --inet -n'
  netstat --inet -n $argv
        
end
