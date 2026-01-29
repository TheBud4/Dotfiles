PLUGIN_DIR="$HOME/.config/zsh/plugins"

# Função para carregar plugins com verificação de existência
load_plugin() {
    local repo=$1
    local name=$(basename $repo)
    if [ ! -d "$PLUGIN_DIR/$name" ]; then
        echo "Instalando plugin $name..."
        git clone --depth 1 "https://github.com/$repo.git" "$PLUGIN_DIR/$name"
    fi
    source "$PLUGIN_DIR/$name/$name.plugin.zsh" 2>/dev/null || \
    source "$PLUGIN_DIR/$name/$name.zsh" 2>/dev/null
}

# Lista de Plugins
load_plugin "zsh-users/zsh-autosuggestions"
load_plugin "zsh-users/zsh-syntax-highlighting"
load_plugin "zsh-users/zsh-completions"
load_plugin "Aloxaf/fzf-tab"

# --- Configurações Extras dos Plugins ---

# Zsh Autosuggestions: Cor da sugestão (cinza discreto)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"

# fzf-tab: Visualização do conteúdo ao completar (ex: ls em diretórios)
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'