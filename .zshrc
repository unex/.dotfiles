export PATH=$HOME/bin:/usr/local:$HOME/.pyenv/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false

ENABLE_CORRECTION="false"

ZSH_CUSTOM=$HOME/.dotfiles/oh-my-zsh/

plugins=(
  git
  thefuck
  archlinux
  docker
  docker-compose
  extract
  pip
  python
  redis-cli
  sudo
  systemd
  tmux
  vscode
  web-search
  dirhistory
  jsontools
  systemadmin
  wd
)

source $ZSH/oh-my-zsh.sh

unsetopt share_history # Do not share history

export VISUAL="nvim"
export EDITOR="$VISUAL"

# Aliases
alias vi="$VISUAL"
alias vim="$VISUAL"
alias ls="ls -lah --color=auto"

eval $(thefuck --alias)
eval "$(pyenv init -)"                                                                                                                                                                                                
eval "$(pyenv virtualenv-init -)"

