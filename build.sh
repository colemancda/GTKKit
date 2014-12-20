#!/bin/bash

if [ `id -u` == 0 ]; then
  echo "Error: you must not be root to build gtkkit!"
  exit 1
fi

which -s tup

if [ $? != 0 ]; then
  echo "Error: building gtkkit requires the Tup build system, available at http://gittup.org/tup"
  exit 1
fi

echo "Ensuring that gtkkit is built."

if [ -e .tup ]; then
  tup
else
  tup init && tup
fi

if [ $? != 0 ]; then
  echo "Error: Tup reports a build error."
  exit 1
fi

echo "Rebuilding documentation."
rm -rf Documentation
doxygen

if [ $? != 0 ]; then
  echo "Error: Doxygen reports a documentation build error."
  exit 1
fi

echo "You may now run ./install.sh as root to install gtkkit."
