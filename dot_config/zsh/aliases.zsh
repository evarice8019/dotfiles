# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
#alias open="xdg-open"
alias make="make -j`nproc`"
alias ninja="ninja -j`nproc`"
alias n="ninja"
alias c="clear"
# --- ARCH LINUX SPECIFIC ---
alias rmpkg="sudo pacman -Rsn"
alias cleanch="sudo pacman -Scc"
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias update="sudo pacman -Syu"
# --- END ARCH LINUX SPECIFIC ---

# Help people new to Arch
# --- ARCH LINUX SPECIFIC ---
alias apt="man pacman"
alias apt-get="man pacman"
# --- END ARCH LINUX SPECIFIC ---
alias please="sudo"
alias tb="nc termbin.com 9999"

# Cleanup orphaned packages
# --- ARCH LINUX SPECIFIC ---
alias cleanup="sudo pacman -Rsn $(pacman -Qtdq)"
# --- END ARCH LINUX SPECIFIC ---

# Get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

# Recent installed packages
# --- ARCH LINUX SPECIFIC ---
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
# --- END ARCH LINUX SPECIFIC ---