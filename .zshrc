# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/ali/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="spaceship"

autoload -U compinit && compinit

plugins=(git zsh-autosuggestions zsh-syntax-highlighting jump)
source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=242"
export CLICOLOR=1
export TERM=alacritty
export BAT_THEME='base16'

# aliases 
source ~/.aliases

# zsh-autosuggestions bindings
bindkey '[[1;5D' backward-word # remove last word suggestion
bindkey '[[1;5C' forward-word # accept a word with ctrl-right
bindkey '^ ' autosuggest-accept # accept whole suggestion
bindkey '^f' forward-word # accept a word in suggestion

# exports 
export PATH=$PATH:/usr/local/go/bin
export GOPATH=~/Workspace/go-pkgs

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
fpath+=${ZDOTDIR:-~}/.zsh_functions

eval "$(starship init zsh)"
