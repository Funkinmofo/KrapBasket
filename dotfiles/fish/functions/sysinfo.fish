function sysinfo --wraps='sudo inxi -Fxz > /home/myrrdin/Documents/SysInfo.txt' --description 'alias sysinfo sudo inxi -Fxz > /home/myrrdin/Documents/SysInfo.txt'
  sudo inxi -Fxz > /home/myrrdin/Documents/SysInfo.txt $argv; 
end
