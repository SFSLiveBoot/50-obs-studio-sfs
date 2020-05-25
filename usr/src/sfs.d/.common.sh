#!/bin/sh

: "${lbu:=/opt/LiveBootUtils}"
. "$lbu/scripts/common.func"

: "${dpkg_status_save:=/tmp/dpkg_status-save}"
: "${obs_src_dir:=/usr/src/obs}"
: "${obs_build_dir:=$obs_src_dir/build}"
: "${obs_git_repo:=https://github.com/obsproject/obs-studio.git}"

: "${cef_tbz_url:=https://cdn-fastly.obsproject.com/downloads/cef_binary_3770_linux64.tar.bz2}"
: "${cef_dir:=/usr/src/cef_binary}"

: "${num_cpus:=$(grep -wc ^processor /proc/cpuinfo)}"
: "${num_cpus:=4}"

: "${build_pkgs:=cmake swig qtbase5-dev libqt5x11extras5-dev libqt5svg5-dev libavdevice-dev libavcodec-dev libcurl4-openssl-dev libpulse-dev libxcomposite-dev libx264-dev libxcb-cursor-dev libxcb-xinerama0-dev libmbedtls-dev libfdk-aac-dev libpython3-dev libluajit-5.1-dev libspeexdsp-dev libfontconfig1-dev libfreetype6-dev libvlc-dev libudev-dev libv4l-dev libjack-jackd2-dev libxinerama-dev libva-dev}"
