#!/bin/sh

APACHE_CONFIG_PATH="/usr/local/etc/apache24/Includes/"

if [ -d "$APACHE_CONFIG_PATH" ]; then
    cp -f PiUtility-cgi.conf $APACHE_CONFIG_PATH
    echo "Install PiUtility-cgi.conf to $APACHE_CONFIG_PATH and reset Apache now..."
    /usr/local/etc/rc.d/apache24 restart
else
    echo "$APACHE_CONFIG_PATH is not exist"
fi
