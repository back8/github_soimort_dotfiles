#!/usr/bin/env zsh

# Zsh
alias zshconfig="$EDITOR $HOME/.zshrc"
alias .,=". $HOME/.zshrc"
alias plz='sudo $(fc -ln -1)'
alias p=pwd

# coreutils
alias cp="cp -i"
alias mv="mv -i"

# development
alias py="python3"
alias py2="python2"

# editors
alias v="vim"
alias gv="gvim"
alias suv="sudo vim"
alias e="emacs -nw"
alias em="setsid emacs"
alias sue="sudo emacs"
alias sc="setsid scite"
alias susc="sudo scite"

# git
alias -- "+"="git add"
alias -- '$'="git commit -m"
alias c="git diff --no-index"
alias d="git diff HEAD --"
alias f="git diff"
alias k="setsid gitk"
alias s="git status"
alias add="git add"
alias branch="git branch"
alias ci="git commit"
alias clone="git clone"
alias co="git checkout"
alias ll="git ll"
alias lll="git lll"
alias merge="git merge"
alias pull="git pull"
alias push="git push"
alias remote="git remote"
alias rm="git rm"
alias tag="git tag"
alias unstage="git unstage"

# networking
alias i="ping -c 3 www.google.com"
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias mygeoip='geoiplookup $(myip)'
alias ssc="sslocal -c $HOME/.zsh/private/shadowsocks.json"
alias xyc="proxychains4 -q"

# misc
alias ds="du -hs * | sort -hr | less"
alias wg="wget --no-check-certificate -U 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36'"
alias ts="date +'%y%m%d-%H%M'"

# Arch
alias pac='pacman'
alias yao='yaourt'
alias mpkg='makepkg --sign'
# <https://bbs.archlinux.org/viewtopic.php?pid=1493345#p1493345>
alias greatpkg='expac -s -H M "%-30n %m" | sort -rhk 2 | less'

# GNOME
alias sysmon="setsid gnome-system-monitor 2>/dev/null"
