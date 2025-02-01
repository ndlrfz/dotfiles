function vdf --wraps='vrgant destroy -f' --wraps='vagrant destroy -f' --description 'alias vdf=vagrant destroy -f'
  vagrant destroy -f $argv
        
end
