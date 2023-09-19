function perfread --wraps='sudo perf report' --description 'alias perfread sudo perf report'
  sudo perf report $argv
        
end
