set -gax PATH ~/.local/bin
set -gax PATH ~/.local/scripts/dm-scripts
set -gax PATH /home/linuxbrew/.linuxbrew/bin

set -gx XDG_DATA_HOME $HOME/.local/share/
set -gx XDG_STATE_HOME $HOME/.local/state/
set -gx XDG_CONFIG_HOME $HOME/.config/
set -gx XDG_CACHE_HOME $HOME/.cache

set -gax XDG_DATA_DIRS /var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share # Just for flatpak

set -gx _JAVA_OPTIONS -Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
set -gx GTK2_RC_FILES $XDG_CONFIG_HOME/gtk-2.0/gtkrc
set -gx GNUPGHOME $XDG_DATA_HOME/gnupg

set -gx MY_TERM kitty
set -gx EDITOR nvim

if status is-interactive

    if test -e (whereis starship | awk '{ print $2 }')
        starship init fish | source
    end

    function fish_greeting
        #if test -e (whereis colorscript | awk '{ print $2 }')
        #    colorscript random
        #end

        if test -e (whereis fastfetch | awk '{ print $2 }')
            fastfetch
        end
    end

    # Commands to run in interactive sessions can go here
    set -g fish_key_bindings fish_vi_key_bindings

    if test -d (brew --prefix)/share/fish/completions
        set -p fish_complete_path (brew --prefix)/share/fish/completions
    end

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
    alias conf="source ~/.config/fish/config.fish"
    alias c="clear"
    alias n="clear; colorscript random"
    alias ff="clear; fastfetch"
    alias fu="clear; uwufetch"
    alias wttr="curl wttr.in/Parkersburg?u"
    alias mk="rm config.h && make && sudo make install"
    alias config="/usr/bin/git --git-dir=$HOME/Downloads/git/dots --work-tree=$HOME"

    alias cp='cp -i'
    alias rm='rm -i'

    if test -e (whereis zoxide | awk '{ print $2 }')
        zoxide init fish | source
        alias cd="z"
        alias cdi="zi"
    end
    alias ..='cd ..'
    alias ...='cd ../..'
    alias .3='cd ../../..'
    alias .4='cd ../../../..'
    alias .5='cd ../../../../..'
    alias .6='cd ../../../../../..'

    if test -e (whereis eza | awk '{ print $2 }')
        alias ls="eza --group-directories-first"
    end
    alias ll="ls -Ahl"
    alias l="ls -lh"
    alias l.='ls -A | grep -E "^\."'
    alias la='ls -A'

    # Arch linux things
    alias pa='paru'
    alias pas='paru -S'

    alias p='sudo pacman'
    alias ps='sudo pacman -S'
    alias pq='pacman -Q'
    alias pr='sudo pacman -Rns --unneeded'

    alias unlock='sudo rm /var/lib/pacman/db.lck'    # remove pacman lock
    alias cleanup='sudo pacman -Rns $(pacman -Qtdq)' # remove orphaned packages (DANGEROUS!)

    alias pacmirror="sudo reflector --country us --fastest 10 --latest 20 --protocol 'https' --verbose --save /etc/pacman.d/mirrorlist"
end
