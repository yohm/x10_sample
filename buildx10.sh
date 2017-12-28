#!/bin/bash -eux

X10_RELEASE=SF_RELEASE_2_6_1
wget https://github.com/x10-lang/x10/archive/$X10_RELEASE.zip -O x10src.zip
unzip x10src.zip
mv x10-$X10_RELEASE x10
cd x10/x10.dist/
export X10_STATIC_LIB=1
ant -Davailable.procs=4 -Doptimize=true -DNO_CHECKS=true dist
rm -f lib/*.so* stdlib/lib/*.so*
cd -

