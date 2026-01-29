# Carrega aliases compartilhados entre Bash e Zsh
for f in "${XDG_CONFIG_HOME:-$HOME/.config}"/shell/aliases/*.sh; do
    [ -r "$f" ] && source "$f"
done
