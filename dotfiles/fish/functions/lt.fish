function lt --wraps='ls --human-readable --size -1 -S --classify' --description 'alias lt ls --human-readable --size -1 -S --classify'
  ls --human-readable --size -1 -S --classify $argv; 
end
