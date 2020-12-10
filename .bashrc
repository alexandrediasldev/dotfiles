#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color -n'
PS1='[\u@\h \W]\$ '


#betterlockscreen
export PATH="${PATH}:${HOME}/.local/bin/"

export VISUAL=vim
export EDITOR=vim
export TERMCMD=urxvt



alias config='/usr/bin/git --git-dir=/home/alex/.cfg/ --work-tree=/home/alex'

#epita custom alias
EPITA_CONF="${HOME}/code/epita/config"
alias epimove='mv $HOME/Downloads/* ./'

alias epitar='for f in *.tar; do tar xf "$f"; done'

alias epiclang='clang-format -i */*.[ch]'
alias epitest='cd tests; clang-format -i */*.[ch]; cd ..'

alias epipush='git push --follow-tags'

alias epimake='cp ${EPITA_CONF}/Makefile ./'
alias epipy='cp ${EPITA_CONF}/conftest.py ./'

alias epish='cp ${EPITA_CONF}/testfunction.sh ${EPITA_CONF}/testscript.sh ${EPITA_CONF}/testsuite.sh ./'
alias epival='valgrind --quiet --track-fds=yes'
