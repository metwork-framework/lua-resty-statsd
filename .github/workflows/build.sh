#!/bin/bash

set -x

yum -y install wget make
wget -O /usr/local/bin/lua-releng "https://raw.githubusercontent.com/openresty/openresty-devel-utils/master/lua-releng"
chmod +x /usr/local/bin/lua-releng
cd /src
make test
