#!/bin/bash

# Crear nueva carpeta ref_repo
folder="ref_repo"
mkdir $folder

# Dictcionarios con direcciones de los equipos
declare -A repos
repos[campechanos]='https://github.com/rgomezh/campechano.git'
repos[goodshellers]='https://github.com/ruizber23/goodshellers.git'
repos[fantasticos]='https://github.com/hxn241/Fantasticos.git'
repos[equipo_confinados]='https://github.com/danielgarciasanchez/Equipo_confinados'
repos[team5]='https://github.com/rbarlaam/Team5'
repos[los bashers]='https://github.com/JoaquinLou/Los-Bashers.git'

# Prompt preguntando por el equipo
read -p "Nombre del equipo a comparar: " team

# Clono el repo del equipo que quiero a ref_repo
git clone ${repos[$team]} ref_repo


# !!! FALTA HACERLO CON FIND (find *.out nos lista todo, pero no sé cómo se guarda en una variable)



#Solución propuesta por Esteban, uso cmp mejor que diff
archivos=(*.out)
for archivo in "${archivos[@]}"
do
if [ -s ref_repo/"$archivo" ] 
then	
if cmp -s $archivo ref_repo/$archivo
then
echo "Nuestro $archivo es igual al otro $archivo"
else
echo "Nuestro $archivo es diferente al otro $archivo"
fi
else
echo "El archivo $archivo está vacío"
fi
done

rm -rf $folder






