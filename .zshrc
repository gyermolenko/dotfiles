# Path to your oh-my-zsh installation.
export ZSH=/home/gy/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
# ZSH_THEME="random"
# ZSH_THEME="sunaku"
ZSH_THEME="eastwood"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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
# Add wisely, as too many plugins slow down shell startup.
plugins=(git pip django)

# User configuration

# export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/go/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# without this i have ugly green bg for folders in my dropbox projects
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

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

alias l="ls -laF -h --group-directories-first"
alias s="ls -laF -h --group-directories-first"
alias lc="ls -AF -h --group-directories-first"
# alias wd="pwd"
# alias c.="cd .."
# alias ch="cd ~"
alias cpr="cd /media/data/Dropbox/Projects"
alias cgc="cd ~/gocode/src/github.com/gy"
alias i2="ipython"
alias i="ipython3"
alias i35="python3.5 -m IPython"

alias gs="git status"
alias gds="git diff --staged"
alias gl="git log"
alias gco="git checkout"
alias glog="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gsh="git show"

alias sagi="sudo apt-get install"
alias supdate="sudo apt-get update && sudo apt-get upgrade"

alias seba="source env/bin/activate"
alias s.ba="source .env/bin/activate"
alias dd="deactivate"

alias fih="find . -maxdepth 1 -iname"
alias grex="grep -r --exclude-dir={env,.git} --exclude={\*.pyc,\*.tags}"
# alias tr="tree -I 'env|.env|.git|*.pyc|__pycache__' -L 2"
# alias tre="tree -I 'env|.env|.git|*.pyc|__pycache__' -L 3"

alias ,ez="vim ~/.zshrc"
alias ,rz="source ~/.zshrc"
alias ,et="vim ~/.tmux.conf"
# alias tmux="tmux -2"
alias tmuxn="tmux-next"
alias tmuxsw="./tmux_setup.sh"
alias tmuxsh="./tmux_setup_home.sh"
alias ag="ag --color-match 1\;31"
# export TERM=xterm-256color
export TERM=screen-256color
# alias sqlite="rlwrap -a -N -i sqlite3"
alias vi="nvim"


# Colored man pages: http://linuxtidbits.wordpress.com/2009/03/23/less-colors-for-man-pages/
# Less Colors for Man Pages
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;016m\E[48;5;220m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

# now C-n/p considers already entered part of command
bindkey "" history-beginning-search-backward
bindkey "" history-beginning-search-forward

# remove binding of numbers like 1-5 to terminal args
bindkey -r '\e1'
bindkey -r '\e2'
bindkey -r '\e3'
bindkey -r '\e4'
bindkey -r '\e5'

# stop terminal from freezing on <C-S>
stty stop undef

# view man pages in vim instead of less
vman() {
  vim -c "SuperMan $*"

  if [ "$?" != "0" ]; then
    echo "No manual entry for $*"
  fi
}


# source ~/.zsh_vi_mode.conf
