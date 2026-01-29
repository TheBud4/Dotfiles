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

# ---- Lista de Plugins Zsh ----

# Sugestões automáticas enquanto você digita
load_plugin "zsh-users/zsh-autosuggestions"

# Realce de sintaxe para facilitar a leitura dos comandos
load_plugin "zsh-users/zsh-syntax-highlighting"

# Completa comandos, arquivos e diretórios de forma inteligente
load_plugin "zsh-users/zsh-completions"

# Abas com fzf para navegação rápida (cd, git, etc)
load_plugin "Aloxaf/fzf-tab"

# Lembra você de usar seus aliases (NextUp, UTFPR, etc)
load_plugin "MichaelAquilina/zsh-you-should-use"

# Busca inteligente no histórico
load_plugin "zsh-users/zsh-history-substring-search"

# Auto-fechamento de aspas e parênteses
load_plugin "hlissner/zsh-autopair"



# ---- Configurações Extras dos Plugins ----

# Zsh Autosuggestions: Cor da sugestão (cinza discreto)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"

# fzf-tab: Visualização do conteúdo ao completar (ex: ls em diretórios)
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'

# ---- Configuração para Edição Automática de Comandos Multilinha ----

# Carrega o módulo necessário para editar a linha de comando
autoload -Uz edit-command-line
zle -N edit-command-line