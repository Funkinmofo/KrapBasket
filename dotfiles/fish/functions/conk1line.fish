function conk1line --wraps='conky -d -c /home/myrrdin/Documents/.conkyrc' --wraps='conky -d -c /home/myrrdin/Documents/.conkyrc1line' --description 'alias conk1line conky -d -c /home/myrrdin/Documents/.conkyrc1line'
  conky -d -c /home/myrrdin/Documents/.conkyrc1line $argv
        
end
