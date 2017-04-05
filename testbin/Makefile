#!/usr/bin/make -f

.PHONY: all clean

all: release

clean:
	cargo clean

target/debug/testbin:
	cargo build
debug: target/debug/testbin

target/release/testbin:
	cargo build --release
release: target/release/testbin
