#Archivo=Practica04
ArchivoExt=`ls *.tex`
Archivo=$(basename $ArchivoExt | cut -d. -f1)

pdflatex $Archivo.tex
pdflatex $Archivo.tex
rm *.aux *.log *.out *.toc *.snm *.nav
evince $Archivo.pdf
