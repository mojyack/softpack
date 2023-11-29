src=(
    "https://github.com/libimobiledevice/$pkg.git"
)

project_root=$pkg-$ver

configure() {
    NOCONFIGURE=1 ./autogen.sh
    ./configure --prefix=$prefix --without-cython
}

build() {
    make -j$nprocs
}

install() {
    make install
}
