function muzak --wraps=fish_right_prompt --description 'alias muzak fish_right_prompt'
end
  function fish_right_prompt 
     set_color brcyan -i
 command echo (playerctl metadata --format {{ title }}🎶) 
end
