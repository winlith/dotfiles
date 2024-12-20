HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY

export EDITOR='nvim'
export VISUAL='nvim'

alias spt="spotify_player"
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket

#~/.scripts/pokemon.sh

export MANPAGER='nvim +Man!'

# bun completions
# [ -s "/home/winlith/.bun/_bun" ] && source "/home/winlith/.bun/_bun"

# bun
# export BUN_INSTALL="$HOME/.bun"
# export PATH="$BUN_INSTALL/bin:$PATH"

autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

source ~/Projects/dotfiles/transient-prompt.zsh

export STARSHIP_CONFIG=~/.config/starship/starship.toml
export STARSHIP_LOG=error
eval "$(starship init zsh)"
