function ports --wraps='sudo netstat -tulanp > /home/myrrdin/Documents/Ports.txt' --description 'alias ports sudo netstat -tulanp > /home/myrrdin/Documents/Ports.txt'
  sudo netstat -tulanp > /home/myrrdin/Documents/Ports.txt $argv; 
end
