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

source ~/alias.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# PS1='[%n@%m] %~ $ '
# PS1='%~ λ '
PS1=$'\n''%F{7}%~%f'$'\n''λ '
[ -z "$PS1" ] || pfetch

bindkey "\e[1;5C" forward-word
bindkey "\e[1;5D" backward-word
bindkey "${terminfo[kdch1]}" delete-char

alias ls='ls -la --color=auto'
alias grep='grep --color=auto'

export EDITOR=nvim
export BUN_INSTALL="$HOME/.bun"
export CARGO_BIN="/home/tydlifon/.cargo/bin"
export PATH="$BUN_INSTALL/bin:$CARGO_BIN:$PATH"

if [ "$(tty)" = "/dev/tty1" ]; then
    export XDG_CURRENT_DESKTOP=Hyprland
    exec start-hyprland
fi
