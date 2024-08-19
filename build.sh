#!/usr/bin/env sh

curl --fail --location --show-error --silent \
	https://github.com/rust-lang/mdBook/releases/download/v0.4.40/mdbook-v0.4.40-x86_64-unknown-linux-gnu.tar.gz |
	tar --extract --gzip

chmod a+rwx,g-w,o-w ./mdbook

./mdbook build
