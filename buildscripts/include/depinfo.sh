#!/bin/bash -e

## Dependency versions

v_sdk=3859397
v_ndk=r16b

v_lua=5.2.4
v_libass=0.14.0
v_fribidi=0.19.7
v_freetype=2-9
v_gnutls=3.6.2
v_nettle=3.4


## Dependency tree
# I would've used a dict but putting arrays in a dict is not a thing

dep_nettle=()
dep_gnutls=(nettle)
dep_ffmpeg=(gnutls)
dep_freetype2=()
dep_fribidi=()
dep_libass=(freetype2 fribidi)
dep_lua=()
dep_mpv=(ffmpeg libass lua)
dep_mpv_android=(mpv)


## Travis-related

# pinned ffmpeg commit used by travis-ci
v_travis_ffmpeg=9fe61b61074b013bc0a9289a207efce2107bfbcf

# filename used to uniquely identify a build prefix
travis_tarball="prefix-ndk-${v_ndk}-lua-${v_lua}-libass-${v_libass}-fribidi-${v_fribidi}-freetype-${v_freetype}-gnutls-${v_gnutls}-nettle-${v_nettle}-ffmpeg-${v_travis_ffmpeg}.tgz"
