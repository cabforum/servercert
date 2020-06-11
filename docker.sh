#!/bin/sh

tlmgr option repository http://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2019/tlnet-final
tlmgr --no-persistent-downloads install sourcecodepro sourcesanspro sourceserifpro crimsonpro
cd /data
pandoc -f markdown -t latex docs/BR.md --table-of-contents -s --metadata-file assets/BR.yaml --pdf-engine=xelatex --template=templates/BR.latex -o docs/BR.pdf
pandoc -f markdown -t html docs/BR.md --table-of-contents -s --metadata-file assets/BR.yaml -o docs/BR.html
pandoc -f markdown -t docx docs/BR.md --table-of-contents -s --metadata-file assets/BR.yaml --reference-doc=templates/BR.docx -o docs/BR.docx
