function muzik --wraps=functions\ -e\ fish_right_prompt\ \&\&\ echo\ \'change\ shell\ to\ re-enable\' --description alias\ muzik\ functions\ -e\ fish_right_prompt\ \&\&\ echo\ \'change\ shell\ to\ re-enable\'
  functions -e fish_right_prompt && echo 'change shell to re-enable' $argv; 
end
