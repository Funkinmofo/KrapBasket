function perfdata --wraps='sudo perf record -g -a sleep 10' --description 'alias perfdata sudo perf record -g -a sleep 10'
  sudo perf record -g -a sleep 10 $argv
        
end
