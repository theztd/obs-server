#!/bin/bash -x

echo "Install dependencies"
apt install -y build-essential git libpcre3-dev libssl-dev zlib1g-dev &>/dev/null


cd /usr/src

echo "Download sources"
git clone https://github.com/arut/nginx-rtmp-module.git
git clone https://github.com/nginx/nginx.git


echo "Compile NGinx"
pushd nginx
	./auto/configure --add-module=../nginx-rtmp-module
make

echo "Install NGinx"
make install




