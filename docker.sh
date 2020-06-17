#!/bin/sh

tlmgr option repository http://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2019/tlnet-final
tlmgr --no-persistent-downloads install sourcecodepro sourcesanspro sourceserifpro crimsonpro
cd /data/docs
pandoc -f markdown -t latex BR.md --table-of-contents -s --metadata-file ../assets/BR.yaml --pdf-engine=xelatex --template=../templates/BR.latex -o ../output/BR.pdf
pandoc -f markdown -t html BR.md --table-of-contents -s --metadata-file ../assets/BR.yaml -o ../output/BR.html
pandoc -f markdown -t docx BR.md --table-of-contents -s --metadata-file ../assets/BR.yaml --reference-doc=../templates/BR.docx -o ../output/BR.docx
