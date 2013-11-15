#!/bin/sh

APACHE_CONFIG_PATH="/usr/local/etc/apache24/Includes"

if [ -f "$APACHE_CONFIG_PATH/PiUtility-cgi.conf" ]; then
    rm -f $APACHE_CONFIG_PATH/PiUtility-cgi.conf
    echo "Deinstall PiUtility-cgi.conf restart Apache now ..."
    /usr/local/etc/rc.d/apache24 restart
else
    echo "$APACHE_CONFIG_PATH/PiUtility-cgi.conf is not exist"
fi
