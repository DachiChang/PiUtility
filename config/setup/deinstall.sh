#!/bin/sh

APACHE_CONFIG_PATH="/usr/local/etc/apache24/Includes"

PiUtility_CONFIG_FILE="PiUtility-cgi.conf"
RESTART_APACHE="no"

for config_file in $PiUtility_CONFIG_FILE; do
    if [ -f "$APACHE_CONFIG_PATH/$config_file" ]; then
        rm -f $APACHE_CONFIG_PATH/$config_file
        echo "Remove $APACHE_CONFIG_PATH/$config_file"
        RESTART_APACHE="yes"
    else
        echo "$APACHE_CONFIG_PATH/$config_file is not exist"
    fi
done

if [ $RESTART_APACHE = "yes" ]; then
    echo "Deinstall PiUtility finished and restart Apache now ..."
    /usr/local/etc/rc.d/apache24 restart
fi
