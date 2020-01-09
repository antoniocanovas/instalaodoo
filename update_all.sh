#!/bin/bash
################################################
## Update_all
##
## Actualiza todos los módulos
################################################

if [ "$(id -u)" != "0" ]; then
   echo "La instalación debe hacerse como root" 1>&2
   exit 1
fi

source config.sh
RUTA=`pwd`

while IFS='' read -r line || [[ -n "$line" ]]; do
    /etc/init.d/odoo-$line stop
    su odoo -c "/opt/odoo/ocb/odoo-bin -c /etc/odoo/odoo-$line.conf -d $line -u all"
    /etc/init.d/odoo-$line start

done < $RUTA/instancias.txt


