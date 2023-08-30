function checknet --wraps='sudo slurm -z -s -d 1 -i eno1' --description 'alias checknet sudo slurm -z -s -d 1 -i eno1'
  sudo slurm -z -s -d 1 -i eno1 $argv; 
end
