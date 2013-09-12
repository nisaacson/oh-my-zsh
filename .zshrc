# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

export EDITOR="subl -w"
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias gst="git status"
alias gpt="gp && gp --tags"
alias gbr="git branch"
alias gco="git checkout"
alias up="cd .."
alias "ct"="colorize"
alias v="vagrant"
alias tre="tree -I node_modules"
alias rr="rerun -x -c -b --"

export PATH=~/bin:$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rand-quote vagrant battery colored-man web-search lol brew colorize)

source $ZSH/oh-my-zsh.sh

if [[ -s $HOME/.nvm ]] ; then
  echo "loading nvm"
  setopt nullglob
  NVM_DIR=$HOME/.nvm
  source $NVM_DIR/nvm.sh
  echo "nvm loaded"
fi

# PATH=$HOME/.nvm/bin:$PATH
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

source ~/.rvm/scripts/rvm

# hide user@host in prompt when on local machine for agnoster theme
DEFAULT_USER=noah


# use up and down arrow keys to navigate search history
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"


export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt

# show battery percentage as right prompt
RPROMPT=`battery_pct_prompt`
