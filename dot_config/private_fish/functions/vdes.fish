function vdes --wraps='vagrant destroy -f' --description 'alias vdes=vagrant destroy -f'
  vagrant destroy -f $argv
        
end
