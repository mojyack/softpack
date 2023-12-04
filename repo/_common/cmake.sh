cmake_configure() {
    mkdir -p $1
    cd $1
    cmake -DCMAKE_INSTALL_LIBDIR=lib -DCMAKE_INSTALL_PREFIX=$prefix -DCMAKE_BUILD_TYPE=Release ..
}
