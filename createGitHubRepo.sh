#!/usr/bin/env bash

#Basado en la URL:  https://circleci.com/blog/pushing-a-project-to-github/?utm_source=google&utm_medium=sem&utm_campaign=sem-google-dg--emea-en-dsa-tROAS-auth-nb&utm_term=g_-_c__dsa_&utm_content=&gclid=CjwKCAjwu4WoBhBkEiwAojNdXrD4KzZ3ZtFeKgwGaHbZgQAIo_dYc5yTLtAA-aXG60APRSDNW2kj4xoCRMMQAvD_BwE

#Obtengo los parámetros

URL_REPO_GITHUB=$1

echo "Inicio"
#Inicializamos el repositorio local
git init 
#Agrego todo lo que tengo (Que será nada en este caso )
git add *
#Commit inicial
git commit -m "Creado el Repositorio"
#configuramos el repositorio remoto
git remote add origin ${URL_REPO_GITHUB}
#git remote add origin ${URL_REPO_GITHUB}
#Saltamos a la rama main.
git branch -M main
#Push de la rama main
git push  -u origin main --force

echo "Final"