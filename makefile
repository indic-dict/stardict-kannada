.PHONY: all

all:
	make -C en-head all
	make -C kn-head all

tars:
	make -C en-head tars
	make -C kn-head tars

