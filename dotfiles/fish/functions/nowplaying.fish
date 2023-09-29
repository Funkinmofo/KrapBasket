function nowplaying --wraps='playerctl metadata --format "Now playing: {{ title }} - {{ artist }}" | lolcat' --description 'playerctl metadata --format "Now playing: {{ title }} - {{ artist }}" | lolcat'
  playerctl metadata --format "Now playing: {{ title }} - {{ artist }}" | lolcat $argv; 
end
