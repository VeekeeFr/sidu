#!/bin/bash

cd /var/www
unzip $NVR.zip
mv $NVR/files_to_upload/* html/
chmod 0777 html/temp/
chown -R root:apache .
rm -fr $NVR*
