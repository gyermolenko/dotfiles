# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
# ZSH_THEME="random"
ZSH_THEME="eastwood"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git pip django docker fasd)

# User configuration

# export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/go/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# without this i have ugly green bg for folders in my dropbox projects
# if [ -x /usr/bin/dircolors ]; then
#     test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
# fi

# # ===== now C-z restores app ===============================
fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '' fancy-ctrl-z
# # ====================================


# === Cases and IFs ========================================
# ==========================================================
case `uname` in
  Darwin)
    alias s="/usr/local/bin/gls -laF -h --group-directories-first --color"

    #export PATH=~/Library/Python/2.7/bin:$PATH

    ## Fixes for pyenv ##
    # For compilers to find zlib you may need to set:
    export LDFLAGS="-L/usr/local/opt/zlib/lib"
    export CPPFLAGS="-I/usr/local/opt/zlib/include"

    # For pkg-config to find zlib you may need to set:
    export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"

    # For compilers to find sqlite you may need to set:
    export LDFLAGS="-L/usr/local/opt/sqlite/lib"
    export CPPFLAGS="-I/usr/local/opt/sqlite/include"

    # For pkg-config to find sqlite you may need to set:
    export PKG_CONFIG_PATH="/usr/local/opt/sqlite/lib/pkgconfig"


  ;;
  Linux)
    alias s="ls -laF -h --group-directories-first"

  ;;
esac

alias ы="echo Damn keyboard layouts; ls"
# ==========================================================

if ! [ -x "$(command -v nvim)" ]; then
  # echo 'nvim is not installed.' >&2
  alias vi="vim"
else
  echo 'nvim is installed.' >&2
  alias vi="nvim"

  # view man pages in nvim instead of less
  export MANPAGER="nvim -c 'set ft=man' -"
fi


if [ -d "/usr/local/opt/postgresql@9.6/bin" ] ; then
    export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"
fi
if [ -d "/usr/local/opt/mysql@5.6/bin" ] ; then
    export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
fi

if [ -d "/opt/apache-spark/" ] ; then
    export SPARK_HOME=/opt/apache-spark/spark-2.3.1-bin-hadoop2.7
    export PATH="$HOME/bin:$HOME/.local/bin:$SPARK_HOME:$PATH"
fi

if [ -f /usr/local/bin/go ]; then
    # echo "golang is present"

    export GOPATH=$HOME/go
    export PATH=$PATH:$GOPATH/bin

# if [ -d "/usr/local/go/bin/" ] ; then
#     export PATH="/usr/local/go/bin:$PATH"
#     export GOPATH="~/go"
#     # export GOROOT="/usr/local/go"
# fi

fi

# rust
if [ -d $HOME/.cargo/bin ]; then
    export PATH="$HOME/.cargo/bin:$PATH"
fi

# ==========================================================


alias cpr="cd ~/Dropbox/Projects"
alias sg="s | grep -i "

alias pis="pip list"
alias pisg="pip list | grep -i "

# alias i2="ipython"
alias i="ipython"
# alias i2="python -m IPython"
# alias i="python3 -m IPython"
# alias i35="python3.5 -m IPython"

## git
alias gs="git status"
alias gds="git diff --staged"
alias gl="git log"
alias gco="git checkout"
alias glog="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gsh="git show"
alias gcm="git commit -m"

## docker
# alias dk="docker"
# alias dkc="docker-compose"

alias sagi="sudo apt-get install"
alias sup="sudo apt-get update && sudo apt-get upgrade"


# alias fih="find . -maxdepth 1 -iname"

## try `lsg` instead
# fih() {
#     find . -maxdepth 1 -iname "*$1*"
# }

## not used for long time
# docker exec -it $1 ps aux | grep python | awk '{ print $2 }' | xargs -I{} docker exec -i $1 kill 
# Kill process in running docker container by its name
# dkill() {
#     # Example:
#     # $ dkill <container_name> <process_name>

#     if [[ $# -ne 2 ]] ; then
#         echo "dkill [container name] [process name]"
#         return 1
#     fi

#     local pid=$(docker exec -it $1 ps aux | grep $2 | awk '{ print $2 }')

#     if [ -z "$pid" ] ; then
#         echo "process not found"
#         return 1
#     else
#         docker exec -it $1 kill $pid
#     fi

# }

# not used
# alias grex="grep -r --exclude-dir={env,.git} --exclude={\*.pyc,\*.tags}"

# alias tr="tree -I 'env|.env|.git|*.pyc|__pycache__' -L 2"
# alias tre="tree -I 'env|.env|.git|*.pyc|__pycache__' -L 3"



alias ,ez="vi ~/.zshrc"
alias ,rz="source ~/.zshrc"
alias ,et="vi ~/.tmux.conf"


# now C-n/p considers already entered part of command
bindkey "^P" history-beginning-search-backward
bindkey "^N" history-beginning-search-forward

bindkey "^U" backward-kill-line

bindkey "^X^X" edit-command-line

# known issues: colors for pure vim are bad in tmux (black right side of each row)
export TERM=xterm-256color
# known issues: cursor shape in tmux remains like a block
# export TERM=screen-256color


# Colored man pages: http://linuxtidbits.wordpress.com/2009/03/23/less-colors-for-man-pages/
# Less Colors for Man Pages
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;016m\E[48;5;220m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline


# try to leave wo this
# remove binding of numbers like 1-5 to terminal args
# bindkey -r '\e1'
# bindkey -r '\e2'
# bindkey -r '\e3'
# bindkey -r '\e4'
# bindkey -r '\e5'




# stop terminal from freezing on <C-S>
stty stop undef


# source ~/.zsh_vi_mode.conf

# ============== Autojump ==================================
# Linux
# if [ -f /usr/share/autojump/autojump.sh ]; then
#     . /usr/share/autojump/autojump.sh
# fi

# # Macos
# if [ -f /usr/local/etc/profile.d/autojump.sh ]; then
#     . /usr/local/etc/profile.d/autojump.sh
# fi
# ============================================================

# ================ Virtual envs ====================================
if [ -d "$HOME/.pyenv"  ]; then
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
    # echo 'pyenv added to PATH' >&2

    if command -v pyenv 1>/dev/null 2>&1; then
        eval "$(pyenv init -)"
    fi

    if [ -d "$HOME/.pyenv/plugins/pyenv-virtualenv"  ]; then
        eval "$(pyenv virtualenv-init -)"

        alias pa="pyenv activate"
        alias pd="pyenv deactivate"

        # alias pe="pyenv"
        alias pev="pyenv versions | grep -Ev '^\*|system|^\s\s[2-3]'"
        # alias pevg="pyenv versions | grep -i"
        alias pevg="pev | grep -i"
        alias pec="pyenv virtualenv"
        alias peu="pyenv uninstall"

        # alias paf="pyenv activate \$(pyenv versions | fzy -l 20)"
        alias paf="pyenv activate \$(pev | fzy -l 20)"
    fi

else
    echo 'pyenv not installed' >&2
fi


alias sba.="source env/bin/activate"
alias dd="deactivate"
# alias wo="workon"

# ======= Useful ==========================================
# $ sudo service --status-all | grep postgr
# $ systemctl stop <service-name>
# =============================================================

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


unsetopt share_history

