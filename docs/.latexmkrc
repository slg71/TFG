# Compila con pdflatex y biber automáticamente
$pdf_mode = 1;
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 %O %S';
$bibtex_use = 2;
$clean_ext = 'bbl run.xml synctex.gz';
