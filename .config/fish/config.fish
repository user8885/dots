set -gax PATH ~/.local/bin
set -gax PATH ~/.local/scripts/dm-scripts
set -gax PATH /home/linuxbrew/.linuxbrew/bin

set -gx XDG_DATA_HOME $HOME/.local/share/
set -gx XDG_STATE_HOME $HOME/.local/state/
set -gx XDG_CONFIG_HOME $HOME/.config/
set -gx XDG_CACHE_HOME $HOME/.cache

set -gax XDG_DATA_DIRS /var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share # Just for flatpak

set -gx GTK2_RC_FILES $XDG_CONFIG_HOME/gtk-2.0/gtkrc
set -gx GNUPGHOME $XDG_DATA_HOME/gnupg
set -gx HISTFILE $XDG_STATE_HOME/bash/history

set -gx MY_TERM kitty
set -gx EDITOR nvim

set -g fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g fish_key_bindings fish_vi_key_bindings
    zoxide init fish | source
    starship init fish | source
    colorscript random

    alias lua_hw="cd ~/Projects/lua/hello_world/"
    alias py_hw="cd ~/Projects/python/hello_world/"
    alias dev=MY_TERM &

    # nixos
    alias nixresw="pushd ~/nix && git add -A && sudo nixos-rebuild switch --flake ~/nix/ && popd"
    alias nixrebo="pushd ~/nix && git add -A && sudo nixos-rebuild boot --flake ~/nix/ && popd"
    alias hore="pushd ~/nix && git add -A && home-manager switch --flake ~/nix/ && popd"
    alias allre="nixresw && hore"
    alias allrebo="nixrebo && hore"

    alias xway="env -u WAYLAND_DISPLAY"

    alias blt='bluetoothctl'
    alias y='yazi'
    alias b="btop"
    alias nv="nvtop"
    alias pm="pulsemixer"
    alias ac="ani-cli -v"
    alias db="distrobox"
    alias v="nvim"
    alias v.="nvim ."
    alias sv="sudoedit"

    #Lazy alias
    alias grep='grep --color=auto'
    alias hg="history | grep"
    alias conf='source ~/.bashrc'
    alias c="clear"
    alias n="c && colorscript random"
    alias ff="c && fastfetch"
    alias fu="c && uwufetch"
    alias wttr="curl wttr.in/Parkersburg?u"
    alias mk="rm config.h && make && sudo make install"
    alias config="/usr/bin/git --git-dir=$HOME/Downloads/git/dots --work-tree=$HOME"

    alias cp='cp -i'
    alias rm='rm -i'
    alias r='trash-put'


    alias ..='z ..'
    alias ...='z ../..'
    alias .3='z ../../..'
    alias .4='z ../../../..'
    alias .5='z ../../../../..'
    alias .6='z ../../../../../..'

    alias ls="eza --group-directories-first"
    alias ll="ls -Ahl"
    alias l="ls -lh"
    alias l.='ls -A | grep -E "^\."'
    alias la='ls -A'

    # Arch linux things
    alias pa='paru'
    alias pas='paru -S'
    ##
    alias p='sudo pacman'
    alias ps='sudo pacman -S'
    alias pq='pacman -Q'
    alias pr='sudo pacman -Rns --unneeded'
    ##
    alias unlock='sudo rm /var/lib/pacman/db.lck'    # remove pacman lock
    alias cleanup='sudo pacman -Rns $(pacman -Qtdq)' # remove orphaned packages (DANGEROUS!)
    ##
    alias pacmirror="sudo reflector --country us --fastest 10 --latest 20 --protocol 'https' --verbose --save /etc/pacman.d/mirrorlist"
end
