src=(
    "https://github.com/nih-at/$pkg/releases/download/v$ver/$pkg-$ver.tar.gz"
)

project_root=$pkg-$ver

source "$repo/_common/regular-make.sh"
source "$repo/_common/cmake.sh"

configure() {
    cmake_configure build
}

build() {
    cd build
    regular_make_all
}

install() {
    cd build
    regular_make_install
}
