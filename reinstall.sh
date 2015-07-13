#!/bin/sh

sudo rm -rf /opt/local/include/GTKKit && \
	./rebuild.sh && \
	sudo ./install.sh
