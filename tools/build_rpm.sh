#!/bin/bash

PKG_VERSION=1.0.0
ITERATION="1"
PKG_NAME="pystatsd"
DEB_LOCATION="/tmp"

python setup.py bdist
/usr/local/bin/fpm -s tar -t rpm --version $PKG_VERSION --iteration $ITERATION --name $PKG_NAME \
     --before-install ./tools/pip_install_dependencies.sh  --package $DEB_LOCATION dist/pystatsd-1.0.0.linux-x86_64.tar.gz



#yum install -y /tmp/pystatsd_1.0.0-1_amd64.deb 

