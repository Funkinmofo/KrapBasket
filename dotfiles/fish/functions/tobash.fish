function tobash --wraps=sudo\ chsh\ myrrdin\ -s\ /bin/bash\ \&\&\ echo\ \'Now\ log\ out.\' --description alias\ tobash\ sudo\ chsh\ myrrdin\ -s\ /bin/bash\ \&\&\ echo\ \'Now\ log\ out.\'
  sudo chsh myrrdin -s /bin/bash && echo 'Now log out.' $argv
        
end
