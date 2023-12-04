src=(
    "https://github.com/neovim/$pkg/archive/refs/tags/v$ver.zip"
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
