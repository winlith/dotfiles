HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char

export EDITOR='nvim'
export VISUAL='nvim'

alias spt="spotify_player"
alias ls="ls --color"

export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket

#~/.scripts/pokemon.sh

export MANPAGER='nvim +Man!'

autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

source ~/.transient-prompt.zsh

export STARSHIP_CONFIG=~/.config/starship/starship.toml
export STARSHIP_LOG=error
eval "$(starship init zsh)"
