LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8
TEMPLATE_DIR=../templates
ASSET_DIR=../assets
CSS_URI=assets
OUTPUT_DIR=../output
HTMLBASE=../

.PHONY: all clean deploy

PANDOC_MD = BR.md
WEASY_MD = Bylaws.md EVG.md NSR.md SCWG-charter.md

pandoc: $(PANDOC_MD:.md=.pdf) $(PANDOC_MD:.md=.html) $(PANDOC_MD:.md=.docx)
weasy: $(WEASY_MD:.md=.pdf) $(WEASY_MD:.md=.html)
all: pandoc weasy

%.pdf: %.md $(ASSET_DIR)/%.yaml $(TEMPLATE_DIR)/%.latex
	pandoc -f markdown -t latex $< --table-of-contents -s --metadata-file $(word 2,$^) --pdf-engine=xelatex --template=$(word 3,$^) -o $@

%.pdf: %.html
	weasyprint --base-url $(HTMLBASE) $< $@

%.html: %.md $(ASSET_DIR)/%.yaml
	pandoc -f markdown -t html $< --table-of-contents -c ${CSS_URI}/normalize.css -c ${CSS_URI}/main.css -c ${CSS_URI}/advanced.css -s --metadata-file $(word 2,$^) -o $@

%.html: %.md
	../utils/kram.rb -t $(TEMPLATE_DIR)/main -o $@ $^

%.docx: %.md $(ASSET_DIR)/%.yaml $(TEMPLATE_DIR)/%.docx
	pandoc -f markdown -t docx $< --table-of-contents -s --metadata-file $(word 2,$^) --reference-doc=$(word 3,$^) -o $@

deploy: all
	cp -va *.pdf *.docx *.html $(OUTPUT_DIR)

clean:
	rm -f *.html *.pdf *.docx
