
## ---------------
##     Aliases
## ---------------
# https://github.com/startup-class/dotfiles/blob/master/.bashrc

alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
set -o noclobber

alias ..='cd ..'
alias ...='cd ..;cd ..'
alias la="ls -A"
alias md='mkdir'
alias cl='clear'

alias ll="ls -alrtF --color"
alias l="ls -CF"

alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'

alias m='less'

alias du='du -ch --max-depth=1'
alias treeacl='tree -A -C -L 2'

# alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw' # Mac OSX




## ---------------
##     Prompt
## ---------------
# https://help.ubuntu.com/community/CustomizingBashPrompt
# ANSI color codes
RS="\[\033[0m\]"    # reset
HC="\[\033[1m\]"    # hicolor
UL="\[\033[4m\]"    # underline
INV="\[\033[7m\]"   # inverse background and foreground
FBLACK="\[\033[30m\]" # foreground black
FRED="\[\033[31m\]" # foreground red
FGREEN="\[\033[32m\]" # foreground green
FYELLOW="\[\033[33m\]" # foreground yellow
FBLUE="\[\033[34m\]" # foreground blue
FMAGENTA="\[\033[35m\]" # foreground magenta
FCYAN="\[\033[36m\]" # foreground cyan
FWHITE="\[\033[37m\]" # foreground white
BBLACK="\[\033[40m\]" # background black
BRED="\[\033[41m\]" # background red
BGREEN="\[\033[42m\]" # background green
BYELLLOW="\[\033[43m\]" # background yellow
BBLUE="\[\033[44m\]" # background blue
BMAGENTA="\[\033[45m\]" # background magenta
BCYAN="\[\033[46m\]" # background cyan
BWHITE="\[\033[47m\]" # background white



# http://www.cyberciti.biz/tips/howto-linux-unix-bash-shell-setup-prompt.html
# user@host:CWD bash >
# PS1="$HC$FBLUE\u$FMAGENTA@\H:$HC$FBLUE\w$HC$FWHITE bash$(parse_git_branch) >$RS "

# user@host:CWD bash >
PS1="$HC$FBLUE\u$FMAGENTA@\H:$HC$FBLUE\w$HC$FWHITE bash >$RS "


