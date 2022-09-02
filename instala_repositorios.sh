#!/bin/bash

if [ "$(id -u)" != "0" ]; then
   echo "La instalación debe hacerse como root" 1>&2
   exit 1
fi

RUTA=`pwd`
cd $RUTA

echo "Que Version Quieres Instalar (12.0/13.0/14.0/15.0)??" 
read version

while IFS='' read -r line || [[ -n "$line" ]]; do

    git pull $line
    if [ $? -ne 0 ]; then
	git clone --depth 1 --branch $version --single-branch $line
    fi
    
done < /root/instalaodoo/repositorios.txt
