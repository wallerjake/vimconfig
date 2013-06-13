# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="af-magic"

# Example aliases
alias zshconfig="vim ~/.zshrc"

# vagrant command
alias vagrant="rvm use 1.9.3 && vagrant $*"
alias vssh="vagrant up && vagrant ssh"
alias vreload="vagrant reload && vagrant ssh"
alias vhalt="vagrant halt"

# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(vi-mode git rails ruby rails3 bundler osx macports svn)

source $ZSH/oh-my-zsh.sh

bindkey '^R' history-incremental-search-backward

autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# Customize to your needs...
export PATH=/Users/jakewaller/.rvm/gems/ruby-2.0.0-p0/bin:/Users/jakewaller/.rvm/gems/ruby-2.0.0-p0@global/bin:/Users/jakewaller/.rvm/rubies/ruby-2.0.0-p0/bin:/Users/jakewaller/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin
