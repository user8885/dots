set TTY1 (tty)
if status --is-login && test "$TTY1" = "/dev/tty1" && test -z "$WAYLAND_DISPLAY"
    set -x DESKTOP_SESSION "sway"
    set -x XDG_CURRENT_DESKTOP "sway"
    set -x XDG_SESSION_TYPE "wayland"
    set -x QT_QPA_PLATFORM "wayland"
    set -x MOZ_ENABLE_WAYLAND "1"
    
    # Optional: Start keyring if needed
    gnome-keyring-daemon --start | read --line gnome_keyring_control ssh_auth_sock
    set -x GNOME_KEYRING_CONTROL (string split -m 1 = $gnome_keyring_control)[2]
    set -x SSH_AUTH_SOCK (string split -m 1 = $ssh_auth_sock)[2]

    # Note: Do not use 'exec' here if you need the keyring variables to persist in child processes,
    # or use 'exec dbus-run-session sway' for D-Bus support.
    # /usr/bin/sway
    exec dbus-run-session sway
end   
