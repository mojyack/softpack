src=(
    "https://github.com/neovim/$pkg/archive/refs/tags/v$ver.zip"
)

project_root=$pkg-$ver

source "$repo/_common/regular-make.sh"

configure() {
    mkdir build
    cd build
    cmake -DCMAKE_INSTALL_LIBDIR=lib -DCMAKE_INSTALL_PREFIX=$prefix ..
}

build() {
    cd build
    regular_make_all
}

install() {
    cd build
    regular_make_install
}
