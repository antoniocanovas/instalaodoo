#!/bin/bash

if [ "$(id -u)" != "0" ]; then
   echo "La instalación debe hacerse como root" 1>&2
   exit 1
fi

cd /opt/odoo

while IFS='' read -r line || [[ -n "$line" ]]; do

    git pull $line
    if [ $? -ne 0 ]; then
	git clone --depth 1 --branch 12.0 --single-branch $line
    fi
    
done < /root/instalaodoo/repositorios.txt
