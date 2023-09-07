function nowplaying --wraps='playerctl metadata --format "Now playing: {{ artist }} - {{ title }}" | lolcat' --description 'playerctl metadata --format "Now playing: {{ artist }} - {{ title }}" | lolcat'
  playerctl metadata --format "Now playing: {{ artist }} - {{ title }}" | lolcat $argv; 
end
