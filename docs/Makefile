TEMPLATE_DIR=../templates
ASSET_DIR=../assets
OUTPUT_DIR=../output

.PHONY: all br-pandoc deploy clean

all: $(MD:.md=.pdf) $(MD:.md=.html)

br-pandoc: 
	pandoc -f markdown -t latex BR.md --table-of-contents -s --metadata-file $(ASSET_DIR)/BR.yaml --pdf-engine=xelatex --template=$(TEMPLATE_DIR)/BR.latex -o BR.pdf
	pandoc -f markdown -t html BR.md --table-of-contents -s --metadata-file $(ASSET_DIR)/BR.yaml -o BR.html
	pandoc -f markdown -t docx BR.md --table-of-contents -s --metadata-file $(ASSET_DIR)/BR.yaml --reference-doc=$(TEMPLATE_DIR)/BR.docx -o BR.docx

%.pdf: %.html
	weasyprint --base-url $(HTMLBASE) $< $@

%.html: %.md
	../utils/kram.rb -t $(TEMPLATE_DIR)/main -o $@ $^

deploy:
	cp -va *.pdf *.docx *.html $(OUTPUT_DIR)

clean:
	rm -f *.html *.pdf *.docx
