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

declare -a string=(001.out 002.out 003.out 004.out 005.out 006.out)

for archivo in $string
do
echo $archivo
#if [ -s ref_repo/"$archivo" ] 
#then
if diff $archivo ref_repo/$archivo
then
echo "Nuestro $archivo es igual al otro $archivo"
else
echo "Nuestro $archivo es diferente al otro $archivo"
fi
#else
#echo "El archivo $archivo está vacío"
#fi
done

rm -rf $folder



