function fish_right_prompt 
function nowplaying --wraps='playerctl metadata --format "Now playing: {{ artist }} - {{ title }}"' --description 'playerctl metadata --format "Now playing: {{ artist }} - {{ title }}"'
  playerctl metadata --format "Now playing: {{ artist }} - {{ title }}" $argv; 
end
  set_color yellow
end


