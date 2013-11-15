#!/bin/sh

APACHE_CONFIG_PATH="/usr/local/etc/apache24/Includes"

PiUtility_CONFIG_FILE="PiUtility-cgi.conf"
RESTART_APACHE="no"

for config_file in $PiUtility_CONFIG_FILE; do
    if [ -d "$APACHE_CONFIG_PATH" ]; then
        cp -f $config_file $APACHE_CONFIG_PATH
        echo "Install $config_file to $APACHE_CONFIG_PATH/$config_file"
        RESTART_APACHE="yes"
    fi
done

if [ $RESTART_APACHE = "yes" ]; then
    echo "Install PiUtility finished and restart Apache now ..."
    /usr/local/etc/rc.d/apache24 restart
fi
