src=(
    "https://github.com/nih-at/$pkg/releases/download/v$ver/$pkg-$ver.tar.gz"
)

project_root=$pkg-$ver

configure() {
    mkdir -p build
    cd build
    cmake -DCMAKE_INSTALL_LIBDIR=lib -DCMAKE_INSTALL_PREFIX=$prefix ..
}

build() {
    cd build
    make -j$nprocs
}

install() {
    cd build
    make install
}
