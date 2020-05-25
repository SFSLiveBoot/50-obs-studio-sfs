#!/bin/sh

set -e
. "$(dirname "$0")/.common.sh"

set -x
cp /var/lib/dpkg/status "$dpkg_status_save"
apt-get -y install $build_pkgs
