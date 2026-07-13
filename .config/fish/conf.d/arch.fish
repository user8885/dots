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
