#!/bin/bash

cd /var/www

# Fail if we downloaded bad copy.
md5sum -c $NVR.md5sum || exit 1

# If we're still here, we have good zip.
unzip $NVR.zip

# Put files in Apache docroot.
mv $NVR/* html/

# Ensure disired ownership.
chown -R root:apache .

# Remove cruft.
rm -fr $NVR*
