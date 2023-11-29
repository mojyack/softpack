do_unpack=1
do_configure=1
do_build=1
do_install=1
pkg=""
ver=""

parse_args() {
    while true; do
        if [[ $# == 0 ]]; then
            if [[ -z $pkg || -z $ver ]]; then
                echo "no PKG or VER specified"
                return 1
            fi
            return 0
        fi

        if [[ $1 == "-u" ]]; then
            do_unpack=0
        elif [[ $1 == "-c" ]]; then
            do_configure=0
        elif [[ $1 == "-b" ]]; then
            do_build=0
        elif [[ $1 == "-i" ]]; then
            do_install=0
        elif [[ -z $pkg ]]; then
            pkg=$1
        elif [[ -z $ver ]]; then
            ver=$1
        else
            echo "too many arguments"
            return 1
        fi
        shift
    done
}
