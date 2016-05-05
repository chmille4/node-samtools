#!/bin/bash
# building off script from Bruno Vieira
VERSION=1.3.1

function build() {
  cd $1
  git checkout $VERSION
  make
  cd ..
}

cd sam

git clone -b master https://github.com/samtools/samtools.git
build samtools
