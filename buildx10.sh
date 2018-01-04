#!/bin/bash -eux

X10_RELEASE=SF_RELEASE_2_6_1
if [ ! -d "x10" ]; then
  wget https://github.com/x10-lang/x10/archive/$X10_RELEASE.zip -O x10src.zip
  unzip x10src.zip
  mv x10-$X10_RELEASE x10
fi
if [ ! -f "x10/x10.dist/bin/x10c++" ]; then
  cd x10/x10.dist/
  export X10_STATIC_LIB=1
  NPROC=${NPROC:-$(getconf _NPROCESSORS_ONLN)}
  ant -Davailable.procs=$NPROC -Doptimize=true -DNO_CHECKS=true dist
  rm -f lib/libgc.so*
  cd -
fi

