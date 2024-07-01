# Grupo
#Grupo="ITI-07346"
#Arreglo_Integrantes_x_Equipo=(4 4 4 4 4 5 5 5) # ITI07346 (5*4=20 + (3*5) = 35)

#Grupo="ITI-07340_RECUPERACION" # Aguilera..
Grupo="GCA" # Aguilera..

#Grupo="GCA" # Aguilera..
#Grupo="ULSA_IB_OCTAVO" # Aguilera..

#Arreglo_Integrantes_x_Equipo=(3 3 3 3 3 3 3) # ITI07340 (7*4=28)
#Arreglo_Integrantes_x_Equipo2=(1 1) # ITI07340 (7*4=28)

#Arreglo_Integrantes_x_Equipo=(4 4 4 4 5) # ITI07340 (7*4=28)
Arreglo_Integrantes_x_Equipo=(3 3 3 3 3 4) # ITI07340 (7*4=28)


#TituloSorteo="Practica Individual # 1"

echo "GRAFICACION POR COMPUTADORA AVANZADA"
#echo "ADQUISICION Y PROCESAMIENTO DE IMAGNES"
#echo "INTRODUCCION A LA GRAFICACION POR COMPUTADORA"
echo "ENERO-MAYO 2020"
echo "PROYECTO # 7 "
#echo "PROYECTO 2 EN EQUIPOS"
echo "GRUPO: "$Grupo

#shuf ${Grupo}_Lideres.txt > Temporal2.txt
#input=Temporal2.txt
#declare -i NL=1

#while IFS= read -r line
#do	
#    echo "Lider Proyecto"$NL">"$line
#    NL=$((NL+1))		

#done < "$input"




shuf $Grupo.txt > Temporal.txt
input=Temporal.txt
declare -i TotalEquipos=1
declare -i V=1
declare -i VA=0
declare -i INTE=1
declare -i Equipo=1
#declare -i Problema=3
while IFS= read -r line
do	
	declare -i Integrantes=${Arreglo_Integrantes_x_Equipo[$((VA))]}
	#echo $line
	if [ $((INTE)) -eq 1 ]  ; then		
		echo -e "\t Equipo # "$Equipo" ( "$Integrantes" ) Colaboradores (Empleados): "
	fi 
	echo -e ' \t \t '$line
	

	if [ $((INTE)) -eq $((Integrantes)) ]  ; then		
		INTE=$((1))		
		Equipo=$((Equipo+1))	
		VA=$((VA+1))		

	else
		INTE=$((INTE+1))	

	fi
	V=$V+1
done < "$input"


