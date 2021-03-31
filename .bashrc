#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color -n'
alias untar='tar -xvf'
PS1='[\u@\h \W]\$ '


#betterlockscreen
export PATH="${PATH}:${HOME}/.local/bin/"

export VISUAL=vim
export EDITOR=vim
export TERMCMD=urxvt


#postgres
export PGDATA="${HOME}/code/epita/ing1/piscine/sql/postgre_data"
export PGHOST="/tmp"

alias startsql='postgres -k "$PGHOST"'


alias config='/usr/bin/git --git-dir=/home/alex/.cfg/ --work-tree=/home/alex'

#epita custom alias
EPITA_CONF="${HOME}/code/epita/config"
EPITA_NGINX="${EPITA_CONF}/nginx/"


alias epimove='mv $HOME/Downloads/* ./'

alias epitar='for f in *.tar; do tar xf "$f"; done'

#alias epiclang='com=$(find ./ -name *.cc -o -name *.hh -o -name *.hxx -o -name *.c -o -name *.h);[[ "$com" ]] && clang-format -i $com'

alias epiclang="find -name _build -prune -o -name .git -prune -o \( -name '*.cc' -o -name '*.hh' -o -name '*.hxx' -o -name '*.[ch]' \) -exec clang-format -i -style=file \{\} \;"

alias epipush='git push --follow-tags'
alias epitag='git tag -m "tag" -a'
alias epicommit='git commit -m'

alias epiprecpp='cp ${EPITA_CONF}/C++/.pre-commit-config.yaml ./;pre-commit install'

alias epimakec='cp ${EPITA_CONF}/C/Makefile ./'
alias epicritc='cp ${EPITA_CONF}/C/criterion.c ./'
alias epimakecpp='cp ${EPITA_CONF}/C++/Makefile ./'
alias epicritcpp='cp ${EPITA_CONF}/C++/criterion.cc ./'


alias epigpp='g++ -Wall -Wextra -Werror -pedantic -std=c++17'

alias epipy='cp ${EPITA_CONF}/conftest.py ./'

alias epish='cp ${EPITA_CONF}/testfunction.sh ${EPITA_CONF}/testscript.sh ${EPITA_CONF}/testsuite.sh ./'
alias epival='valgrind --quiet --track-fds=yes'
alias epicppcheck='cppcheck --enable=all --suppress=missingIncludeSystem'
alias epispidercheck='cppcheck --enable=all --suppress=missingIncludeSystem -I ./src '

alias epicmakeccls='cmake -H. -BDebug -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=YES;ln -s Debug/compile_commands.json .'




