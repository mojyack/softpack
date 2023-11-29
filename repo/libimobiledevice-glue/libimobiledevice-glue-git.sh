src=(
    "https://github.com/libimobiledevice/$pkg.git"
)

project_root=$pkg.git

configure() {
    NOCONFIGURE=1 ./autogen.sh
    ./configure --prefix=$prefix
}

build() {
    make -j$nprocs
}

install() {
    make install
}
