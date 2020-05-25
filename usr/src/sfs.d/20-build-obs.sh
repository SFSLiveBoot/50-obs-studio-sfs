#!/bin/sh

set -e
. "$(dirname "$0")/.common.sh"

set -x
git clone --recursive --depth=1 $obs_git_repo $obs_src_dir

mkdir -p "$obs_build_dir"
cd "$obs_build_dir"

: "${cef_tbz:=$(dl_file $cef_tbz_url)}"

mkdir -p "$cef_dir"
tar xfj "$cef_tbz" --strip-components=1 -C "$cef_dir"

cmake -DUNIX_STRUCTURE=1 -DBUILD_BROWSER=ON -DCEF_ROOT_DIR="$cef_dir" "$obs_src_dir"

make -j$num_cpus

make install DESTDIR=$DESTDIR
