#!/bin/bash

export OPENSSL_INCLUDE_DIR=`brew --prefix openssl`/include
export OPENSSL_LIB_DIR=`brew --prefix openssl`/lib

TARGET_CC=x86_64-linux-musl-gcc RUST_BACKTRACE=full PKG_CONFIG_ALLOW_CROSS=1 cargo build --release --target x86_64-unknown-linux-musl

