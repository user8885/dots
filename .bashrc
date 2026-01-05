if [[ -f /etc/bashrc ]]; then
    source /etc/bashrc
fi

addToPATH() {
   export PATH=$1:$PATH
}
addToPATH ~/.local/bin
addToPATH ~/scripts/dm-scripts

# VI-Mode
unset -f __main
set -o vi

# DT color scripts
colorscript random

#fastfetch

# Starship
__main() {
    local major="${BASH_VERSINFO[0]}"
    local minor="${BASH_VERSINFO[1]}"

    if ((major > 4)) || { ((major == 4)) && ((minor >= 1)); }; then
        source <(starship init bash --print-full-init)
    else
        source /dev/stdin <<<"$(starship init bash --print-full-init)"
    fi
}
__main

# zoxide is better
eval "$(zoxide init bash)"

alias lua_hw="cd ~/Projects/lua/hello_world/"
alias py_hw="cd ~/Projects/python/hello_world/"
alias dev="${TERMINAL_EMULATOR} &"

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
alias cpd='cp -r'
alias rmd='rm -r'


if [ -z "${CONTAINER_ID}" ]; then
    alias cd='z'
    alias cdi='zi'
fi
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias .6='cd ../../../../../..'

# ls
if [ -z "${CONTAINER_ID}" ]; then
    alias ls="eza --group-directories-first"
else
    alias ls='ls --group-directories-first'
fi
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
