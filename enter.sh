#!/bin/bash

./docker-wine --as-root --volume=$PWD:/mnt --volume=$PWD/u-center.sh:/u-center.sh --device=/dev/ttyACM0