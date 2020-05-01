# jetson-nano-environment-setup


- https://developer.nvidia.com/embedded/learn/get-started-jetson-nano-devkit

- https://github.com/NVIDIA/nvidia-docker/wiki/NVIDIA-Container-Runtime-on-Jetson
- https://desertbot.io/blog/jetson-nano-usb-headless-wifi-setup-edimax-ew-7811un

Already installed with the Jetson Nano Image

```
$ sudo dpkg --get-selections | grep nvidia
libnvidia-container-tools			instal
libnvidia-container0:arm64			install
nvidia-container-runtime			install
nvidia-container-runtime-hook		install
nvidia-docker2				install

$ sudo docker info | grep nvidia
+ Runtimes: nvidia runc
```


WIFI issue:

sudo iw dev wlan0 set power_save off
