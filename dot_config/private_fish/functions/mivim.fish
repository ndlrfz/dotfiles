function mivim --wraps='NVIM_APPNAME=MiVim nvim' --wraps='NVIM_APPNAME=mivim nvim' --description 'alias mivim=NVIM_APPNAME=mivim nvim'
  NVIM_APPNAME=mivim nvim $argv
        
end
