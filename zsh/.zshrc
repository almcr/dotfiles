# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

autoload -U compinit && compinit

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting 
  jump
  jira
  rust
  fzf
)

# exports 
export PATH=$PATH:/usr/local/go/bin:/home/ali/go/bin
export GOPATH=$HOME/go
export USE_GKE_GCLOUD_AUTH_PLUGIN=True
export PATH=$PATH:~/GoLand-2022.1/bin
export EDITOR='nvim'
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=242"
export CLICOLOR=1
export BAT_THEME='base16'

export JIRA_URL='https://data-impact.atlassian.net/'
export JIRA_NAME='Ali Mecerhed'
export JIRA_PREFIX='PO1-'

source $ZSH/oh-my-zsh.sh

# zsh-autosuggestions bindings
bindkey '[[1;5D' backward-word # remove last word suggestion
bindkey '[[1;5C' forward-word # accept a word with ctrl-right
bindkey '^ ' autosuggest-accept # accept whole suggestion
bindkey '^f' forward-word # accept a word in suggestion


# aliases 
source ~/.aliases

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
fpath+=${ZDOTDIR:-~}/.zsh_functions

[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
eval "$(starship init zsh)"
