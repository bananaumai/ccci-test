TARGET := ./dist/build
VERSION := DEFAULT

BUILD := ${TARGET}

$(BUILD):
	echo BUILD > ${TARGET}

.POHNY: build
build: $(BUILD)

.PHONY: test
test: build
	grep BUILD ${TARGET}

.POHNY: deploy
deploy: build
	echo ${VERSION} >> ${TARGET}
