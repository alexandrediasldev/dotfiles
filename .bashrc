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

export VISUAL=nvim
export EDITOR=nvim
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

alias parseclaunch='python -m parsec.cli'

alias wrap80='fold -w 80 -s '

alias parsetup='python setup.py extract_translations compile_translations generate_pyqt'
alias partr="nvim parsec/core/gui/tr/parsec_en.po"
alias parfr="nvim parsec/core/gui/tr/parsec_fr.po"


mvnarchgen() {
    echo "Generate a new maven project"
    if [ "$#" -gt 1 ]; then
        echo "Too many arguments."
        return 1
    elif [ "$#" -lt 1 ]; then
        echo "Please supply project name"
        return 1
    fi
    mvn archetype:generate -DgroupId=fr.epita."$1" \
                           -DartifactId="$1"-app \
                           -DarchetypeArtifactId=maven-archetype-simple \
                           -DarchetypeVersion=1.4 \
                           -DinteractiveMode=false;


    sed -ie 's|\(<maven.compiler.[a-z]*>\)1.7\(</maven.compiler.[a-z]*>\)|\116\2|' "$1"-app/pom.xml

}
epijava () {
    java -cp target/"$1"-app-1.0-SNAPSHOT.jar fr.epita."$1".App
}

function ranger {
    local IFS=$'\t\n'
    local tempfile="$(mktemp -t tmp.XXXXXX)"
    local ranger_cmd=(
        command
        ranger
        --cmd="map Q chain shell echo %d > "$tempfile"; quitall"
    )

    ${ranger_cmd[@]} "$@"
    if [[ -f "$tempfile" ]] && [[ "$(cat -- "$tempfile")" != "$PWD" ]]; then
        cd -- "$(cat "$tempfile")" || return
    fi
    command rm -f -- "$tempfile" 2>/dev/null
}


