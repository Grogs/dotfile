# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="bira"


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ll="ls -alh"
alias la="ls -a"
alias ls="ls -F --color=always"
alias vlc="open -a vlc "
alias sed=gsed
alias find=gfind
alias find0="gfind -print0"
alias xargs0="xargs -0"
wiki() { dig +short txt "$*".wp.dg.cx; }
cmdfu(){ wget -qO - "http://www.commandlinefu.com/commands/matching/$@/$(echo -n "$@" | openssl base64)/plaintext"; }
myip() {dig myip.opendns.com @Resolver1.opendns.com +short}
setopt vi

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vi-mode screen)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/Users/grogs/bin:/Users/grogs/bin/Play20:/opt/local/libexec/gnubin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin/:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:/usr/texbin:/usr/X11/bin:/Users/grogs/bin:/Users/grogs/bin/Play20:/opt/local/libexec/gnubin:/opt/local/bin:/opt/local/sbin:/usr/local/sbin/


#Auto connect/start single screen session
zmodload zsh/regex

tmux attach
