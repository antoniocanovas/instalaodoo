#!/bin/bash
################################################
## Update_all
##
## Actualiza todos los módulos
################################################

# add to log all to a file
exec 3>&1 4>&2
trap 'exec 2>&4 1>&3' 0 1 2 3
exec 1>log-update-all.out 2>&1
# Everything below will go to the file 'log.out':

if [ "$(id -u)" != "0" ]; then
   echo "La instalación debe hacerse como root" 1>&2
   exit 1
fi

source config.sh
RUTA=`pwd`

while IFS='' read -r line || [[ -n "$line" ]]; do
    /etc/init.d/odoo-$line stop
    su odoo -c "/opt/odoo/odoo/odoo-bin -c /etc/odoo/odoo-$line.conf -d $line -u all --stop-after-init --workers=0"
    /etc/init.d/odoo-$line start

done < $RUTA/instancias.txt


