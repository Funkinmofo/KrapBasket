function scannet --wraps='sudo iftop -n -b -p -P -B' --description 'alias scannet sudo iftop -n -b -p -P -B'
  sudo iftop -n -b -p -P -B $argv; 
end
