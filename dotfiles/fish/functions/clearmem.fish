function clearmem --wraps='sync; sudo sysctl vm.drop_caches=3' --description 'alias clearmem sync; sudo sysctl vm.drop_caches=3'
  sync; sudo sysctl vm.drop_caches=3 $argv; 
end
