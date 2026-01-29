#! /bin/bash

# Shell-agnostic (POSIX)

export EDITOR=nvim
export VISUAL=nvim
export PAGER=less

export PATH="$HOME/.local/bin:$PATH"

alias ll='ls -lah'
alias gs='git status'
alias gd='git diff'

# Variáveis comuns
export EDITOR=nvim
export VISUAL=nvim
export PAGER=less

# PATH
export PATH="$HOME/.local/bin:$PATH"


# -----------------------------------------------
#     Configurações das variaveis de ambiente
# -----------------------------------------------

# Flutter SDK
export PATH="/home/thebud4/flutter/bin:$PATH"

# Android SDK
export ANDROID_SDK_ROOT="/home/thebud4/Android/Sdk"
export ANDROID_HOME="$ANDROID_SDK_ROOT"
export PATH="$PATH:$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/tools/bin:$ANDROID_SDK_ROOT/platform-tools"

# Chrome
export CHROME_EXECUTABLE="/var/lib/flatpak/exports/bin/com.google.Chrome"

# NVM (Apenas exports, sem executar o script)
export NVM_DIR="$HOME/.nvm"

# SDKMAN (Apenas exports, sem executar o script)
export SDKMAN_DIR="$HOME/.sdkman"

# bin
export PATH="$HOME/.bin:$PATH"

# Dart Pub Cache
export PATH="$PATH":"$HOME/.pub-cache/bin"

# Local bin
export PATH="$HOME/.local/bin:$PATH"

# Gradle
export PATH="$HOME/.gradle/bin:$PATH"