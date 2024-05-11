src=(
    "https://github.com/libimobiledevice/$pkg.git"
)

project_root=$pkg.git

source "$repo/_common/regular-make.sh"

configure() {
    NOCONFIGURE=1 ./autogen.sh
    CFLAGS=-D_GNU_SOURCE regular_configure --without-cython
}

build() {
    regular_make_all
}

install() {
    regular_make_install
}
