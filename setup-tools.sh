#!/usr/bin/env bash

# Setup stack.
curl -sSL https://get.haskellstack.org/ | sh

# Se tup the location for our tools.
mkdir -p ~/.mobile-haskell

# Install cabal HEAD.
cd ~/.mobile-haskell
git clone git@github.com:haskell/cabal.git
cd cabal-install && stack exec --no-ghc-package-path -- ./bootstrap.sh

# Install LLVM.
brew install llvm

# Download the GHCs we need,
cd ~/.mobile-haskell
curl -o ghc-aarch64-apple-ios.tar.xz http://releases.mobilehaskell.org/x86_64-apple-darwin/9824f6e473/ghc-8.4.0.20180109-aarch64-apple-ios.tar.xz
curl -o ghc-x86_64-apple-ios.tar.xz http://releases.mobilehaskell.org/x86_64-apple-darwin/9824f6e473/ghc-8.4.0.20180109-x86_64-apple-ios.tar.xz
# and unpack them.

mkdir -p ghc-aarch64-apple-ios && xz -d ghc-aarch64-apple-ios.tar.xz && tar -xf ghc-aarch64-apple-ios.tar -C ghc-aarch64-apple-ios
mkdir -p ghc-x86_64-apple-ios && xz -d ghc-x86_64-apple-ios.tar.xz && tar -xf ghc-x86_64-apple-ios.tar -C ghc-x86_64-apple-ios

# Set up the toolchain wrapper.
cd ~/.mobile-haskell
git clone git@github.com:zw3rk/toolchain-wrapper.git
cd toolchain-wrapper && ./bootstrap
