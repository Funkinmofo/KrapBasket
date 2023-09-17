function cl() {
    DIR="$*";
	# if no DIR given, go home
	if [ $# -lt 1 ]; then
		DIR=$HOME;
    fi;
    builtin cd "${DIR}" && \
    # use your preferred ls command
	ls -F --color=auto
}

##mkdir then cd
function mdcd {
    command mkdir $1 && cd $1
}


##super grep
function fullgrip() {
grep --with-filename --line-number --color=always "$1" "$2"

}
