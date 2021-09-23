# ublox_gnss_testbench

small repository containing utility things around the ublox ZED-F9P gnss receiver

### How to use

* connect ZED-F9P via USB-C cable
* `./setup.sh`
* `./enter.sh`
* in container type `./u-center.sh`
  * or start u-center with wine manually with `wine /mnt/u-center_v21.05.exe `
* press `ENTER` a couple of times until the installation is finished
* use u-center
  * https://learn.sparkfun.com/tutorials/getting-started-with-u-center-for-u-blox/all


![Screenshot from 2021-09-23 19-15-08](https://user-images.githubusercontent.com/6985609/134553807-e5c4d79c-b165-4a60-b150-a25fcdccdefc.png)


## Misc

This repository is utilizing wine-docker from https://hub.docker.com/r/scottyhardy/docker-wine/

