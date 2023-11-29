src=(
    "https://github.com/libimobiledevice/$pkg/releases/download/$ver/$pkg-$ver.tar.bz2"
)

project_root=$pkg-$ver

source "$repo/_common/regular-tar-make.sh"
