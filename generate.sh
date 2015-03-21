#!/usr/bin/env /bin/bash

set -e

git submodule update --init --recursive

cd ghcjs-build

vagrant up

vagrant ssh -c << END
  wget https://raw.githubusercontent.com/elm-lang/elm-platform/master/installers/BuildFromSource.hs
  runhaskell BuildFromSource.hs 0.14.1
END
