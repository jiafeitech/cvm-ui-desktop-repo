#!/bin/sh
# tutorial from https://earthly.dev/blog/creating-and-hosting-your-own-deb-packages-and-apt-repo/

# set base dir
BASE_DIR="$PWD"
echo $BASE_DIR

# cleanup
rm -rvf $BASE_DIR/repo/dists/anal/main/binary-amd64/**
rm -rvf $BASE_DIR/repo/dists/anal/Release

# make Packages and Packages.gz
dpkg-scanpackages --arch amd64 $BASE_DIR/repo/pool/ > $BASE_DIR/repo/dists/anal/main/binary-amd64/Packages
cat $BASE_DIR/repo/dists/anal/main/binary-amd64/Packages | gzip -9 > $BASE_DIR/repo/dists/anal/main/binary-amd64/Packages.gz

# make Release
cd $BASE_DIR/repo/dists/anal/ && $BASE_DIR/scripts/generate-release.sh > Release
