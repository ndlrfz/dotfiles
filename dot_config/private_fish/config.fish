if status is-interactive
    # Commands to run in interactive sessions can go here
end

if type -q exa
    alias ls exa
    alias ll "exa -l -g --icons"
    alias lla "ll -a"
end

if type -q vagrant
    alias vup "vagrant up"
    alias vdf "vagrant destroy -f"
    alias vssh "vagrant ssh"
    alias vgs "vagrant global-status"
end

if type -q web-search
    alias gl "web-search google"
    alias sov "web-search stackoverflow"
    alias github "web-search github"
end

if type -q doas
    alias sudo='doas'
    alias sudoedit='doas rnano'
end

if type -q python
    alias py python3
end

function fish_user_key_bindings
    bind \eOH beginning-of-line
    bind \eOF end-of-line
end

bind \cs __ethp_commandline_toggle_sudo

set fish_greeting ""
set -gx TERM xterm-256color
#set -U autovenv_enable yes
#set -U autovenv_announce yes

fzf_configure_bindings --variable=

set --universal pure_show_system_time false
set --universal pure_color_system_time pure_color_mute
set -U pure_enable_single_line_prompt true
# # ツ 󰘧   ⋊>       
set -U pure_symbol_prompt "󰘧"
set -U pure_symbol_ssh_prefix "󰣀 "
set -U pure_shorten_prompt_current_directory_length 1
set -U pure_symbol_virtualenv_prefix " "
set -U pure_show_prefix_root_prompt true
