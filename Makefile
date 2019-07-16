.PHONY: build test

VERSION=default

build:
	echo ${VERSION} > ./build

test:
	echo ./test.txt | grep test
