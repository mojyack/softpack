src=(
    "https://github.com/nih-at/$pkg/releases/download/v$ver/$pkg-$ver.tar.gz"
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
