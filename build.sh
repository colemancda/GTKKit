#!/bin/bash

if [ `id -u` == 0 ]; then
  echo "Error: you must not be root to build gtkkit!"
  exit 1
fi

echo "Ensuring that gtkkit is built."

if [ -e .tup ]; then
  tup
else
  tup init && tup
fi

if [ $? != 0 ]; then
  echo "Tup reports a build error."
  exit 1
fi

echo "Rebuilding documentation."
doxygen

if [ $? != 0 ]; then
  echo "Doxygen reports a documentation build error."
  exit 1
fi

echo "You may now run ./install.sh as root to install gtkkit."