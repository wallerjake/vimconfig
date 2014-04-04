# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="af-magic"

# Example aliases
alias zshconfig="vim ~/.zshrc"
alias zshreload="source ~/.zshrc"
alias vimconfig="vim ~/.vimrc"
alias vimreload="source ~/.vimrc"

# toolshed aliases
alias gpush="toolshed push_branch"
#alias gcheckout="toolshed checkout_branch --branch-name"
alias gs="git status"
alias gcpr="toolshed create_pull_request"
alias gcprd="toolshed create_pull_request --use-defaults=true"
alias gcb="toolshed create_branch"
alias story_info="toolshed ticket_information --clipboard=true --use-defaults=true --formatted-string=\"{name} - {url}\""
alias story_url="toolshed ticket_information --clipboard=true --use-defaults=true --field=\"url\""
alias time_s="toolshed get_daily_time_update --format=\"html\" --use-defaults=true"

# wallproductions
alias wallproductions="cd ~/development/ruby/wallproductions; clear;"

function gcheckout() {
 toolshed checkout_branch --branch-name=\"$1\"
}

function update_home_server() {
  toolshed ssh --user="[user]" --host="[host here]" --commands="sudo apt-get update;sudo apt-get dist-upgrade;" --password="home_server_password" --sudo-password="home_server_password"
}

# wallproductions keys
export EDMUNDS_API="[fill me in]"
#export CODECLIMATE_REPO_TOKEN=[fill me in]

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vi-mode rails ruby bundler osx macports virtualenv)

source $ZSH/oh-my-zsh.sh

bindkey '^R' history-incremental-search-backward

autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# User configuration

export PATH="/usr/bin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/opt/local/lib/postgresql93/bin:/usr/local/mysql/bin:/usr/X11/bin:/usr/local/sbin/mtr"
# export MANPATH="/usr/local/man:$MANPATH"
# /usr/bin/php

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export PATH="/opt/chef/embedded/bin:$PATH"
