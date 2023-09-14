function tilsplit --wraps='tilix --session=/home/myrrdin/Documents/split.json' --wraps='tilix --session=/home/myrrdin/.tilix/split.json' --description 'alias tilsplit tilix --session=/home/myrrdin/.tilix/split.json'
  tilix --session=/home/myrrdin/.tilix/split.json $argv
        
end
