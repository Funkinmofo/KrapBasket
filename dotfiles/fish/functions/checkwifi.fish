function checkwifi --wraps='sudo slurm -z -s -d 1 -i wlp3s0' --description 'alias checkwifi sudo slurm -z -s -d 1 -i wlp3s0'
  sudo slurm -z -s -d 1 -i wlp3s0 $argv; 
end
