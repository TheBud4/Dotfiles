# Carrega funcoes compartilhadas entre Bash e Zsh
for f in "${XDG_CONFIG_HOME:-$HOME/.config}"/shell/functions/*.sh; do
    [ -r "$f" ] && source "$f"
done
