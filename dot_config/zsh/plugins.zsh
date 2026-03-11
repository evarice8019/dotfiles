# --- DISTRO SPECIFIC: PLUGIN & THEME PATHS ---
# source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# Fish-like syntax highlighting and autosuggestions
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Use history substring search
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# pkgfile "command not found" handler
source /usr/share/doc/pkgfile/command-not-found.zsh
# --- END DISTRO SPECIFIC ---

# --- DISTRO SPECIFIC: FZF PATH ---
export FZF_BASE=/usr/share/fzf
# --- END DISTRO SPECIFIC ---