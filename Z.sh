# Pasos Previos
#git init
#git add .
#git commit -m "Initial Commit"
#git config --global credential.helper store
#git branch -M main
#git remote add origin https://github.com/mnunom-upv/PresentacionCursosLatex.git

# Clonar repositiro remoto a local
#gh repo clone mnunom-upv/Lista-de-Productos-Academicos-y-de-Investigacion

NombreMateria=PresentacionPM
NombreMateria=PresentacionFSI
NombreMateria=PresentacionPM_2024
NombreMateria=PresentacionLA


NombreMateria=PresentacionPOO_2024
NombreMateria=PresentacionSI_2024

NombreMateria=PresentacionPM_2024_SEP-DIC
NombreMateria=PresentacionFSI_2024


pdflatex $NombreMateria.tex
rm *.aux *.log *.nav *.out *.snm *.toc




current=$(date '+%s')
# Agrega un archivo
git add Entregables/*.*
git add TemasACubrir/*.*
git add HorariosClase/*.*
git add ReglasBasicas/*.*
git add MaterialesNecesario/*.*
git add Recuperacion/*.*
git add Evaluacion/*.*
git add FechasEntrega/*.*
git add CV_Profesor/*.*
git add ConsideracionesEspeciales/*.*
git add DiagramaFlujoVaginal/*.*
git add Conclusion/*.*
git add Plagio/*.*
git add Intro_SI_2022/*.*
git add Z.sh
git add *.tex
git add *.pdf


# Establece una version
git commit -m "Version${current}"
# Hace el Push
git push -u origin main

open $NombreMateria.pdf

exit



