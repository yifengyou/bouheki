#!/bin/bash

if [ ! -f go1.17.5.linux-amd64.tar.gz ] ; then
	wget -c https://go.dev/dl/go1.17.5.linux-amd64.tar.gz
fi

if [ ! -d /usr/local/share/go1.17.5 ] ; then
	mkdir -p /usr/local/share/go1.17.5
	tar -xvf go1.17.5.linux-amd64.tar.gz -C /usr/local/share/
	mv /usr/local/share/go /usr/local/share/go1.17.5
fi

apt-get update
apt-get install -y libzstd-dev libbpf-dev linux-libc-dev
