Objects in this directory were produced using the following command-lines:

*BR.md* - `pandoc -f markdown -t latex docs/BR.md -o artifacts/BR.pdf --table-of-contents -s --metadata-file assets/BR.yaml --pdf-engine=xelatex --template=templates/BR.latex` 

*BR.docx* - `pandoc -f markdown -t docx docs/BR.md -o artifacts/BR.docx --table-of-contents -s --metadata-file assets/BR.yaml`

*BR.html* - `pandoc -f markdown -t html5 docs/BR.md -o artifacts/BR.html --table-of-contents -s --metadata-file assets/BR.yaml -c assets/main.css -c assets/advanced.css`
