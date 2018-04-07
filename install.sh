#!/bin/bash


# install dependencies
apt update

apt install gcc make build-essential tcl 

# change to temporary directory
cd /tmp

# download latest stable Redis version
curl -O http://download.redis.io/redis-stable.tar.gz

# extract Redis compressed file
tar xzvf redis-stable.tar.gz

# change to extracted directory
cd redis-stable

# build and install Redis
make

make test

make install