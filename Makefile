DIST_DIR=dist
VERSION=1.1.5

.PHONY: run
run:
	cd src && npm run start

.PHONY: packages
packages:
	./node_modules/.bin/electron-builder --linux --ia32 --x64

.PHONY: build
build:
	npm install && cd src && npm install


.PHONY: archive
archive:
	zip -r $(DIST_DIR)/verizonMessages-linux.zip $(DIST_DIR)/linux-unpacked/*

.PHONY: set-version
set-version:
	cd src && npm version $(VERSION)
