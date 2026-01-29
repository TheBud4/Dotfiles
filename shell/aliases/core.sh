#! /bin/bash

# -----------------------------------------------
#             Aliases personalizados
# -----------------------------------------------

# @desc: Lista todos os arquivos (incluindo ocultos) em detalhes
alias ll='ls -alF'

# @desc: Atualiza o sistema e pacotes
alias upgrade='sudo dnf upgrade --refresh'

# @desc: Navega para minha pasta de projetos
alias prj='cd ~/www/Projetos'

# @desc: Navega para minha pasta da NextUp
alias nextup='cd ~/www/NextUp'

# @desc: Navega para minha pasta de Cursos
alias curso='cd ~/www/Cursos'

# @desc: Navega para minha pasta da faculdade
alias utf='cd ~/www/Utfpr'

# @desc: Limpa a tela do terminal
alias cls='clear'

# @desc: Atualiza o bashrc, profile e bashenv
alias rprofile='source ~/.config/bash/profile'

# @desc: Atualiza o .bashrc
alias rbash='source ~/.config/bash/bashrc'

# @desc: Atualiza o .zshrc
alias rzsh='source ~/.config/zsh/zshrc'


# --------------------------------------------
# Substitutos Modernos para Comandos Clássicos
# --------------------------------------------

# Dependências necessárias: eza, bat, ripgrep (rg), fd
# Instale com o gerenciador de pacotes do seu sistema.

if command -v eza >/dev/null 2>&1; then
    # @desc: Substituto moderno para 'ls' com ícones, cores e info do Git.
    alias ls='eza --icons'
fi

if command -v bat >/dev/null 2>&1; then
    # @desc: Substituto para 'cat' que adiciona numeração de linhas e cores.
    alias cat='bat --paging=never'
fi

if command -v rg >/dev/null 2>&1; then
    # @desc: Substituto para 'grep' extremamente rápido, respeita .gitignore.
    alias grep='rg'
fi
