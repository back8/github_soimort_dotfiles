#!/usr/bin/env zsh
# Oh My Zsh theme
# @since        2015-12-23
# @lastChanged  2019-11-16
# @author       Mort Yao <soi@mort.ninja>

local ret_status="%(?:%{$fg[green]%}[%{$reset_color%}\
%{$fg_bold[green]%} ♥ %{$reset_color%}\
%{$fg[green]%}]%{$reset_color%}\
:%{$fg[red]%}[%{$reset_color%}\
%{$fg_bold[red]%}%?%{$reset_color%}\
%{$fg[red]%}]%{$reset_color%}%s)"
PROMPT='${ret_status}%{$fg_bold[green]%}%p %{$fg[white]%}%c $(git_prompt_info) %{$reset_color%}'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$bg[white]$fg[black]%} "
ZSH_THEME_GIT_PROMPT_SUFFIX=" %{$reset_color%}"

TIMEFMT="$fg[green][$reset_color\
$fg_bold[green]⌛$reset_color\
$fg[green]]$reset_color$fg[green] $reset_color\
$fg_bold[green]%*S$reset_color$fg[green]s (sys) + $reset_color\
$fg_bold[green]%*U$reset_color$fg[green]s (user) | $reset_color\
$fg_bold[green]%*E$reset_color$fg[green]s = $reset_color\
$fg_bold[green]%P$reset_color$fg[green] $reset_color\
$fg_bold[green]$ %J$reset_color"
REPORTTIME=1

long_prompt() {
    PROMPT='%{$fg_bold[green]%}%p %{$fg[white]%}%c $(git_prompt_info) %{$reset_color%}
${ret_status} '
}

# overwrite terminal title: show current working directory only
ZSH_THEME_TERM_TITLE_IDLE="%1~/"
