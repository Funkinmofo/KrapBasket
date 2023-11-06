function birth --wraps=stat\ /\ \|\ awk\ \'/Birth:\ /\{print\ \}\' --description alias\ birth\ stat\ /\ \|\ awk\ \'/Birth:\ /\{print\ \}\'
  stat / | awk '/Birth: /{print }' $argv
        
end
