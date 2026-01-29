


# ---- Configurações de Keybinds para plugins zsh ----

# Configuração para zsh-history-substring-search
bindkey '^[[A' history-substring-search-up    # Seta para cima
bindkey '^[[B' history-substring-search-down  # Seta para baixo

# Usar as teclas do Vim no histórico
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down


# Configuração para edição automática de comandos multilinha

# Define o atalho Ctrl-x seguido de Ctrl-e para abrir o editor
bindkey '^x^e' edit-command-line