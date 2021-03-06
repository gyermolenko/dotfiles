# RVM settings
if [[ -s ~/.rvm/scripts/rvm ]] ; then 
  RPS1="%{$fg[yellow]%}rvm:%{$reset_color%}%{$fg[red]%}\$(~/.rvm/bin/rvm-prompt)%{$reset_color%} $EPS1"
else
  if which rbenv &> /dev/null; then
    RPS1="%{$fg[yellow]%}rbenv:%{$reset_color%}%{$fg[red]%}\$(rbenv version | sed -e 's/ (set.*$//')%{$reset_color%} $EPS1"
  fi
fi

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Customized git status, oh-my-zsh currently does not allow render dirty status before branch
git_custom_status() {
  local cb=$(current_branch)
  if [ -n "$cb" ]; then
    echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}
git_custom_status_wo_dirty() {
  local cb=$(current_branch)
  if [ -n "$cb" ]; then
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

# PROMPT='$(git_custom_status)%{$fg[cyan]%}[%~% ]%{$reset_color%}%B$%b '

# local prompt_jobs="%(1j.%{$fg[yellow]%}%j%{$reset_color%}%{$fg[red]%}z%{$reset_color%} .)"
# PROMPT='${prompt_jobs}$(git_custom_status)%{$fg[cyan]%}[%~% ]%{$reset_color%}%B$%b '

NEWLINE=$'\n'
# white $ on a new line
# PROMPT='$(git_custom_status)%{$fg[cyan]%}[%~% ]%{$reset_color%}%B${NEWLINE}$%b '

# continue cyan to $ char
# PROMPT='$(git_custom_status)%{$fg[cyan]%}[%~% ]%B${NEWLINE}$%{$reset_color%}%b '

# no red * when git is dirty
PROMPT='$(git_custom_status_wo_dirty)%{$fg[cyan]%}[%~% ]%B${NEWLINE}$%{$reset_color%}%b '
