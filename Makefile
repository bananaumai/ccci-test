.PHONY: test deploy

VERSION := DEFAULT
TARGET := ./dist/build

BUILD := ${TARGET}

$(BUILD):
	echo BUILD > ${TARGET}

build: $(BUILD)

test: build
	grep BUILD ${TARGET}

deploy: build
	echo ${VERSION} >> ${TARGET}
