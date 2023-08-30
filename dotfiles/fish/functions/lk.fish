function lk --wraps='exa -al --color=always --group-directories-first' --description 'alias lk exa -al --color=always --group-directories-first'
  exa -al --color=always --group-directories-first $argv; 
end
