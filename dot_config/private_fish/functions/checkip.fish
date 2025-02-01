function checkip --wraps='curl https://ipinfo.io' --description 'alias checkip=curl https://ipinfo.io'
  curl https://ipinfo.io $argv
        
end
