configure() {
    ./configure --prefix=$prefix
}

build() {
    make -j$nprocs
}

install() {
    make install
}
