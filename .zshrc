# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tydlifon/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# PS1='[%n@%m] %~ $ '
PS1='%~ $ '
[ -z "$PS1" ] || pfetch

bindkey "\e[1;5C" forward-word
bindkey "\e[1;5D" backward-word
bindkey "${terminfo[kdch1]}" delete-char

alias ls='ls -la --color=auto'
alias grep='grep --color=auto'
alias v='nvim'
alias S='paru -S'
alias Ss='paru -Ss'
alias Syu='paru -Syu'
alias Rns='paru -Rns'

export EDITOR=nvim
export BUN_INSTALL="$HOME/.bun"
export CARGO_BIN="/home/tydlifon/.cargo/bin"
export PATH="$BUN_INSTALL/bin:$CARGO_BIN:$PATH"

if [ "$(tty)" = "/dev/tty1" ]; then
    export XDG_CURRENT_DESKTOP=Hyprland
    exec start-hyprland
fi
