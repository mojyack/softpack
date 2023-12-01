regular_configure() {
    ./configure --prefix=$prefix $@
}

regular_make_all() {
    make -j$nprocs
}

regular_make_install() {
    make DESTDIR=$destdir install
}
