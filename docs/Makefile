LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8
TEMPLATE_DIR=../templates
ASSET_DIR=../assets
OUTPUT_DIR=../output
HTMLBASE=../

MD = $(wildcard *.md)

.PHONY: all clean deploy

all: $(MD:.md=.pdf) $(MD:.md=.html)

br-pandoc:
  pandoc -f markdown -t latex BR.md --table-of-contents -s --metadata-file $(ASSET_DIR)/BR.yaml --pdf-engine=xelatex --template=$(TEMPLATE_DIR)/BR.latex -o BR.pdf
  pandoc -f markdown -t html BR.md --table-of-contents -s --metadata-file $(ASSET_DIR)/BR.yaml -o BR.html
  pandoc -f markdown -t docx BR.md --table-of-contents -s --metadata-file $(ASSET_DIR)/BR.yaml --reference-doc=$(TEMPLATE_DIR)/BR.docx -o BR.docx

br-pandoc-deploy:
  cp -va BR.pdf BR.html BR.docx $(OUTPUT_DIR)

deploy:
	cp -va *.pdf *.html $(OUTPUT_DIR)

%.pdf: %.html
	weasyprint --base-url $(HTMLBASE) $< $@

%.html: %.md
	../utils/kram.rb -t $(TEMPLATE_DIR)/main -o $@ $^

clean:
	rm -f *.html *.pdf
