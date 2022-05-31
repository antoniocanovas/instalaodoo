#!/bin/bash
#############################################
# Actualiza la instalación completa de Odoo8
# Y de los módulos instalados.
#
# Inicialmente crea una copia de seguridad,
# Si se produce un error en la copia, detiene
# la actualización.
#
############################################

if [ "$(id -u)" != "0" ]; then
   echo "La instalación debe hacerse como root" 1>&2
   exit 1
fi

source config.sh

RUTA=`pwd`

cd $INSTAL_BASE
for dir in ./* ; do
    if [ -d $dir ]; then
        directorio=`cut -c 2-<<< $dir`
        echo $directorio
        git config --global --add safe.directory /opt/odoo$directorio
    fi
done
