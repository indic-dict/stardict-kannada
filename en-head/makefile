STARDICT_TOOLS_DIR=~/stardict/tools/src/
TABFILE=$(STARDICT_TOOLS_DIR)/tabfile
DICT_TOOLS_BIN_BASH=~/dict-tools/bin/bash

# make full DICTS=xyz
DICTS=.*
OVERWRITE=false

URL=https://github.com/indic-dict/stardict-kannada/raw/gh-pages/en-head/tars

.PHONY: all stardict tars

all: stardict tars

stardict:
	bash $(DICT_TOOLS_BIN_BASH)/tsv_to_stardict.sh DICTS=$(DICTS)


tars:
	bash $(DICT_TOOLS_BIN_BASH)/make_tarballs.sh $(URL) DICTS=$(DICTS)

full:
	bash $(DICT_TOOLS_BIN_BASH)/full_build.sh $(URL) DICTS=$(DICTS) GITHUB_TOKEN=$(GITHUB_TOKEN) overwrite=$(OVERWRITE)
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
current_dir := $(dir $(mkfile_path))
# Let the URL not end with /.
tarlist:
	bash $(DICT_TOOLS_BIN_BASH)/update_tars_md.sh $(current_dir)tars $(URL)
