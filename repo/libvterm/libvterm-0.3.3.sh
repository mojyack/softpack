src=(
    "https://www.leonerd.org.uk/code/$pkg/$pkg-$ver.tar.gz"
)

project_root=$pkg-$ver

source "$repo/_common/regular-make.sh"

configure() {
    sed -i "s|PREFIX=/usr/local|PREFIX=$prefix|" Makefile
}

build() {
    regular_make_all
}

install() {
    regular_make_install
}
