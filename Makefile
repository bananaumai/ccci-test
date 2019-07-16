.PHONY: test deploy

VERSION=DEFAULT
TARGET=./dist/build

build:
	echo BUILD > ${TARGET}

test:
	echo ./build | grep BUILD

deploy: build 
	echo ${VERSION} >> ${TARGET}
