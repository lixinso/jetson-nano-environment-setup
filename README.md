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
https://medium.com/@dhillon_81/fixing-wifi-connectivity-on-nvidia-jetson-nano-an-artificial-intelligence-developer-kit-48638072d3c1
https://elinux.org/Jetson_Nano#Wireless

sudo iw dev wlan0 set power_save off

Wireless
Edimax EW-7811Un (USB Wi-Fi wireless dongle)
Intel 8265NGW (M.2 Key-E Wi-Fi/BT wireless card)
Geekworm Dual Band Wireless USB 3.0 Wi-Fi Adapter (USB3 Wi-Fi dongle and SMA antenna)
