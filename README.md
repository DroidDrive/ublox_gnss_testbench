# ublox_gnss_testbench

<img src="https://user-images.githubusercontent.com/6985609/135155169-c71afd49-5ff3-4587-a0c4-0e65e1860944.png" alt="Ducktrain Logo" width="30%" >

This is a small repository containing utility things around the ublox ZED-F9P gnss receiver.


### How to use

* connect ZED-F9P via USB-C cable (should create /dev/ttyACM0)
* `./setup.sh`
* `./enter.sh`
* in container type `./u-center.sh`
  * or start u-center with wine manually with `wine /mnt/u-center_v21.05.exe `
* press `ENTER` a couple of times until the installation is finished
* use u-center
  * https://learn.sparkfun.com/tutorials/getting-started-with-u-center-for-u-blox/all


![Screenshot from 2021-09-23 19-15-08](https://user-images.githubusercontent.com/6985609/134553807-e5c4d79c-b165-4a60-b150-a25fcdccdefc.png)


## Misc

* This repository is utilizing wine-docker from https://hub.docker.com/r/scottyhardy/docker-wine/

* you can use the `View->Generation 9 Configuration View to configure the ZED-F9P module properly`

  * you can also save configuration steps (for multiple repeated config changes or other device)

  * the same config view will show the UBX commands for configuring the ZED-F9P dynamically (at runtime) via UART

    * for example setting some `CFG-MESSAGE-OUT`configurations for letting the module output specific `UBX` messages on the UART1, the tool will show (after configuring the values manually) the following:

      * > Ram layer config message:
        > b5 62 06 8a 13 00 00 01 00 00 07 00 91 20 01 66 00 91 20 01 1b 00 91 20 01 42 3d 
        >
        > BBR layer config message:
        > b5 62 06 8a 13 00 00 02 00 00 07 00 91 20 01 66 00 91 20 01 1b 00 91 20 01 43 4f 
        >
        > Flash layer config message:
        > b5 62 06 8a 13 00 00 04 00 00 07 00 91 20 01 66 00 91 20 01 1b 00 91 20 01 45 73

* a rudimentary modm c++ driver implementation exists [here](https://github.com/DroidDrive/ublox_modm_example)
