src=(
    "https://github.com/libimobiledevice/$pkg/releases/download/$ver/$pkg-$ver.tar.bz2"
)

project_root=$pkg-$ver

source "$repo/_common/regular-make.sh"

configure() {
    regular_configure
}

build() {
    regular_make_all
}

install() {
    regular_make_install
}
