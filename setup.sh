#!/bin/bash


### we are utilizing this:
### https://hub.docker.com/r/scottyhardy/docker-wine/

wget https://raw.githubusercontent.com/scottyhardy/docker-wine/master/docker-wine
chmod +x docker-wine

FILENAME="u-center_v21.05.exe"
if [ -f $FILENAME ]; then
    echo "Skipping download ..."
else
    echo "Downloading $FILENAME"
    wget https://www.u-blox.com/sites/default/files/u-center_v21.05.exe.zip -O temp.zip
    unzip  temp.zip
    rm temp.zip
fi
