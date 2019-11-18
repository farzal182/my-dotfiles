#!/usr/bin/env zsh
#local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

setopt promptsubst

autoload -U add-zsh-hook

GREEN=$fg_bold[green]
YELLOW=$fg_bold[yellow]
BLUE=$fg_bold[blue]

PROMPT_PROMPT=$FG[077]
GIT_DIRTY_COLOR=$FG[133]
GIT_CLEAN_COLOR=$FG[118]
GIT_PROMPT_INFO=$fg_bold[red]

PROMPT='%{$fg_bold[magenta]%}%n%{$reset_color%}%{$fg_bold[red]%}@%m%{$YELLOW%} [$(date +%D", "%H:%M)]%{$reset_color%} %{$BLUE%}<%~>:%{$reset_color%}%{$GIT_PROMPT_INFO%}$(git_prompt_info)$(virtualenv_prompt_info)%{$GIT_DIRTY_COLOR%}$(git_prompt_status) %{$reset_color%} '

#RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[blue]%}git:%{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$BLUE%}(%{$GIT_DIRTY_COLOR%}✘%{$BLUE%})"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$BLUE%}(%{$GIT_CLEAN_COLOR%}✔%{$BLUE%})"

ZSH_THEME_GIT_PROMPT_ADDED="%{$FG[082]%} ✚ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$FG[166]%} ✹ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$FG[160]%} ✖ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$FG[220]%} ➜ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$FG[082]%} ═ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$FG[190]%} ❕%{$reset_color%}"

ZSH_THEME_VIRTUALENV_PREFIX=" ["
ZSH_THEME_VIRTUALENV_SUFFIX="]"
