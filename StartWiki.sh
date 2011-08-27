#!/bin/bash

# Ensure that we are compiled.

if [ ! -f bzwikipedia ] ; then
  echo "bzwikipedia is not compiled. Compiling ..."
  cd gosrc
  make
  cd ..
fi

if [ ! -f gosrc/bzwikipedia ] ; then
  echo "Apparently unable to compile bzwikipedia."
  exit
fi

[ -f bzwikipedia ] || ln -s gosrc/bzwikipedia bzwikipedia

./bzwikipedia