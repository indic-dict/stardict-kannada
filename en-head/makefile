STARDICT_TOOLS_DIR=~/stardict/tools/src/
TABFILE=$(STARDICT_TOOLS_DIR)/tabfile

ifndef dicts
	dicts="*"
endif

.PHONY: all tars

all:
	$(TABFILE) $(dicts)/*.tsv
	dictunzip $(dicts)/*.dz
	bash ../bin/make_tarballs.sh $(dicts)

tars:
	bash ../bin/make_tarballs.sh https://github.com/vvasuki/stardict-sanskrit/raw/master/en-head

