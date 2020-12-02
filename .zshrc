# Plugins; see avialable in ~/.oh-my-zsh/plugins/
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git git-flow autojump mvn docker gnu-utils httpie sbt scala)

#Z/ Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="bira"


wiki() { dig +short txt "$*".wp.dg.cx; }
cmdfu(){ wget -qO - "http://www.commandlinefu.com/commands/matching/$@/$(echo -n "$@" | openssl base64)/plaintext"; }
myip() {dig myip.opendns.com @Resolver1.opendns.com +short}

setopt emacs
setopt extended_glob

setopt nopromptcr

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
#DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

export PATH=~/bin/gnutls:~/bin:/opt/local/libexec/gnubin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin/:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:/usr/texbin:/usr/X11/bin:~/bin/Play20:/opt/local/libexec/gnubin:/opt/local/bin:/opt/local/sbin:/usr/local/sbin/:/usr/local/share/python/:~/Library/Python/2.7/bin

fpath=(~/bin/compdef $fpath)

#Color ls output
eval "$(gdircolors || dircolors )"

zmodload zsh/regex

#Nicer searching
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
bindkey '^R' history-incremental-search-backward

once_a_day() {
  flag="once_a_day.$(tr -d ' /'<<<"$@")"
  touch -a "/tmp/$flag" && find /tmp -maxdepth 1 -name "$flag" -mtime +1 -exec "$@" ';' -exec touch "/tmp/$flag" ';' >/dev/null
}
 

#Imports
source ~/.aliases 
source $ZSH/oh-my-zsh.sh
source ~/.prompt #Override omz prompt. I don't always have omz installed.

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" #Hack from http://stackoverflow.com/a/16103755/126583

precmd() { print "" } #dirty hack


tm() {
  if [ -z $1 ]; then
    tmux list-sessions
    return
  fi
  tmux detach -s $1 2> /dev/null
  tmux attach-session -t $1 2> /dev/null || tmux new-session -s $1
}

_tm() {
  local word completions
  word="$1"
  sessions=`tmux list-sessions 2> /dev/null`
  [ $? -ne 0 ] && return
  completions=`echo "$sessions" | cut -d ':' -f1`
  reply=( "${(f)completions}" )
}
compctl -K _tm tm


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
