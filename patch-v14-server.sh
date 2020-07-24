#!/bin/bash
supervisord_conf='/usr/local/etc/filewave/supervisor/supervisord-server.conf'
echo "Patching $supervisord_conf"

if [ -f "$supervisord_conf" ]; then
    sed -i "s/apache\/logs\/\*_log\*\"/apache\/logs\/error_log\*\"/g" $supervisord_conf
    grep error_log\* $supervisord_conf > /dev/null
    R = $?
    if [ $R -ne 0 ]; then
        echo "Failed to patch $supervisord_conf; error_log isnt found in the file..."
        exit 1
    fi
else
    echo "$supervisord_conf isn't found - not patching"
fi

# patch apache/httpd.conf - ensure the process-group="django" isn't on the WSGIScriptAlias line
httpd_conf = '/usr/local/filewave/apache/conf/httpd.conf'
if [ -f "$httpd_conf" ]; then

fi

# patch the settings.py 
settings_py = '/usr/local/filewave/django/filewave/settings.py'
if [ -f "$settings_py" ]; then
    grep "" $settings_py
fi

