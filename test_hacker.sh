#!/bin/bash

# Crear nueva carpeta ref_repo
mkdir ./ref_repo

# Dictcionarios con direcciones de los equipos
declare -A repos
repos[campechanos]='https://github.com/rgomezh/campechano.git'
repos[goodshellers]='https://github.com/ruizber23/goodshellers.git'
repos[fantasticos]='https://github.com/hxn241/Fantasticos.git'
repos[equipo_confinados] = 'https://github.com/danielgarciasanchez/Equipo_confinados'
repos[team5]='https://github.com/rbarlaam/Team5'
repos[los bashers]='https://github.com/JoaquinLou/Los-Bashers.git'

# Prompt preguntando por el equipo
read -p "Nombre del equipo a comparar: " team
echo repos[$team]
#git clone repos[$team] ref_repo
