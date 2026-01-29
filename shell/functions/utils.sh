#! /bin/bash
# -----------------------------------------------
#                     Funções
# -----------------------------------------------

# @desc: Abre o gerenciador de arquivos Nautilus no diretório atual
ntl() {
    local dir="${1:-.}"
    ( command nautilus "$dir" >/dev/null 2>&1 & ) >/dev/null 2>&1
}

# Função para listar atalhos personalizados definidos em shell/aliases/core.sh
atalhos() {
    local config_dir aliases_file
    config_dir="${XDG_CONFIG_HOME:-$HOME/.config}"
    aliases_file="$config_dir/shell/aliases/core.sh"
    
    printf "\033[1;38;5;41m Meus Atalhos Personalizados\033[0m\n"
    printf "\033[1;38;5;41m-------------------------------\033[0m\n"
    
    if [[ ! -f "$aliases_file" ]]; then
        printf "\033[38;5;196mArquivo de aliases não encontrado:\033[0m %s\n" "$aliases_file"
        return 1
    fi
    
    awk '
    /^# @desc:/ {
        desc = substr($0, 10);
        next;
    }
    desc {
        if ($1 == "alias") {
            pos = index($0, "=");
            comando = substr($0, 7, pos - 7);
            valor = substr($0, pos + 1);
        } else {
            comando = $1;
            valor = "\"Função Bash\"";
        }

        printf "\033[38;5;32m%-10s \033[0m| \033[38;5;208m-> \033[0m%-30s | %s\n", comando, valor, desc;

        desc = "";
    }
    ' "$aliases_file"
}
