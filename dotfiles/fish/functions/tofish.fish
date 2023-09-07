function tofish --wraps=sudo\ chsh\ myrrdin\ -s\ /bin/fish\ \&\&\ echo\ \'Now\ log\ out.\' --description alias\ tofish\ sudo\ chsh\ myrrdin\ -s\ /bin/fish\ \&\&\ echo\ \'Now\ log\ out.\'
  sudo chsh myrrdin -s /bin/fish && echo 'Now log out.' $argv
        
end
