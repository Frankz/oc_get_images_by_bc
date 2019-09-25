BIN ?= oc_get_images_by_bc
PREFIX ?= /usr/local

install:
        cp oc_get_images_by_bc.sh $(PREFIX)/bin/$(BIN)

uninstall:
        rm -f $(PREFIX)/bin/$(BIN)

example.sh:
        ./example.sh

.PHONY: example.sh

