#------------------------------                                                                                       
# Adopt .bash_profile config
#------------------------------                                                                                       
source ~/.bash_profile


#------------------------------                                                                                       
# Customize Prompt                               
#------------------------------                                                                                       
## Source:  http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html                                              
### user@host:CWD zsh >                                                                                               
PROMPT="%B%F{blue}%n%F{magenta}@%m:%F{blue}%~ %F{white}zsh > %f%b"


#------------------------------
# Show Git Branch
#------------------------------
## Source: https://git-scm.com/book/en/v2/Git-in-Other-Environments-Git-in-Zsh
#autoload -Uz vcs_info
#precmd_vcs_info() { vcs_info }
#precmd_functions+=( precmd_vcs_info )
#setopt prompt_subst
#RPROMPT=\$vcs_info_msg_0_
# PROMPT=\$vcs_info_msg_0_'%# '
#zstyle ':vcs_info:git:*' formats '%b'

