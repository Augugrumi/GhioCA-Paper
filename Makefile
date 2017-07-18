#Author: Polonio Davide <poloniodavide@gmail.com>
#License: GPLv3

OUTPUT_NAME= GhioCA
LIST_NAME= listOfSections.tex
PATH_OF_CONTENTS= res/sections
COMPILER_OPTIONS= pdflatex -interaction=nonstopmode

SHELL := /bin/bash #Need bash not shell

export EMAIL
export PASSWORD

all: generate quiet

slow: image generate quiet
debug: generate notquiet

generate:
	set -e; \
	if [[ -a "res/$(LIST_NAME)" ]]; then echo "Removing res/$(LIST_NAME)"; \
		rm res/$(LIST_NAME); fi; \
	for i in $(sort $(wildcard $(PATH_OF_CONTENTS)/*.tex)); do \
		echo "Adding $$i into $(LIST_NAME)"; \
		echo "\input{$$i}" >> res/$(LIST_NAME); \
	done; \

quiet:
	latexmk -jobname=$(OUTPUT_NAME) -pdflatex='$(COMPILER_OPTIONS)' -quiet -pdf main.tex;

notquiet:
	latexmk -jobname=$(OUTPUT_NAME) -pdflatex='$(COMPILER_OPTIONS)' -pdf main.tex;

image:
	set -e; \
	cd ./tool/emaildownloader/; \
	$(MAKE) IMAGES_PATH=../../res/img/;

clean:
	git clean -Xfd
	if [[ -a "$(OUTPUT_NAME)" ]]; then rm -rv $(OUTPUT_NAME)/; fi;
