# <- src
# -> url save
parse_src() {
    src=$1

    elms=(${(z)src})
    url=${elms[1]}
    if (( $#elms >= 2 )); then
        save=${elms[2]}
    else
        save=${url:t} 
    fi
}

# <- url save
download_src() {
    url=$1
    save=$2

    echo "downloading $url as $save"
    if [[ ${url:e} == "git" ]]; then
        git clone --depth=1 --recursive $url $distdir/$save
    else
        curl -L -o $distdir/$save $url
    fi
}

# <- save
unpack_src_to_cwd() {
    if [[ ${save:e} == "bz2" ||
          ${save:e} == "gz" ]]; then
        tar -xf $distdir/$save
    elif [[ ${save:e} == "zip" ]]; then
        unzip $distdir/$save
    elif [[ ${save:e} == "git" ]]; then
        cp -r $distdir/$save .
    fi
}
