#!/bin/bash

# Crear nueva carpeta ref_repo
echo mkdir ./ref_repo

# Dictcionarios con direcciones de los equipos
echo declare -A repos
echo repos[campechanos]='github.com/rgomezh/campechano.git'
echo repos[goodshellers]='github.com/ruizber23/goodshellers.git'
echo repos[fantasticos]='github.com/hxn241/Fantasticos.git'
echo repos[equipo_confinados] = 'github.com/danielgarciasanchez/Equipo_confinados'
echo repos[team5]='github.com/rbarlaam/Team5'
echo repos[los bashers]='github.com/JoaquinLou/Los-Bashers.git'

# Prompt preguntando por el equipo
echo read -p "Nombre del equipo a comparar: " team
echo git clone repos[$team]
