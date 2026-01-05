# .bash_profile -*- mode: sh -*-

# This file is read each time a login shell is started.
# All other interactive shells will only read .bashrc
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share/"
export XDG_STATE_HOME="$HOME/.local/state/"
export XDG_CONFIG_HOME="$HOME/.config/"

export XDG_DATA_DIRS=/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share:$XDG_DATA_DIRS # Just for flatpak

export HISTFILE="${XDG_STATE_HOME}"/bash/history
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc

export MY_TERM='ghostty'
export EDITOR='nvim'

if [ "$(tty)" = "/dev/tty1" ]; then
   pgrep Hyprland || start-hyprland
   #pgrep niri || niri --session
   #pgrep lxqt-session || startlxqtwayland

   #pgrep bspwm || startx ~/.config/bspwm/xinitrc

   #pgrep cosmic-session || start-cosmic # This is broken idkw \_||_/
   #pgrep sway || sway
fi
