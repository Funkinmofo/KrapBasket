if status is-interactive
    # Commands to run in interactive sessions can go here
set fish_greeting
###ALIASES
eval (thefuck --alias | tr '\n' ';')
starship init fish | source
mach

#function fish_right_prompt 
 #  set_color brcyan -i
# command echo (playerctl metadata --format {{ title }}🎶) 

 #end
end


#
