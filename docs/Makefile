TEMPLATE_DIR=../templates
ASSET_DIR=../assets
OUTPUT_DIR=../output

.PHONY: all deploy clean

MD = BR.md
all: $(MD:.md=.pdf) $(MD:.md=.html) $(MD:.md=.docx)

%.pdf: %.md $(ASSET_DIR)/%.yaml $(TEMPLATE_DIR)/%.latex
	pandoc -f markdown -t latex $< --table-of-contents -s --metadata-file $(word 2,$^) --pdf-engine=xelatex --template=$(word 3,$^) -o $@

%.html: %.md $(ASSET_DIR)/%.yaml
	pandoc -f markdown -t html $< --table-of-contents -s --metadata-file $(word 2,$^) -o $@

%.docx: %.md $(ASSET_DIR)/%.yaml $(TEMPLATE_DIR)/%.docx
	pandoc -f markdown -t docx $< --table-of-contents -s --metadata-file $(word 2,$^) --reference-doc=$(word 3,$^) -o $@

deploy:
	cp -va *.pdf *.docx *.html $(OUTPUT_DIR)

clean:
	rm -f *.html *.pdf *.docx
