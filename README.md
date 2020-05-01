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
https://forums.developer.nvidia.com/t/jetson-nano-wifi/72269

sudo iw dev wlan0 set power_save off

Wireless
Edimax EW-7811Un (USB Wi-Fi wireless dongle)
Intel 8265NGW (M.2 Key-E Wi-Fi/BT wireless card)
Geekworm Dual Band Wireless USB 3.0 Wi-Fi Adapter (USB3 Wi-Fi dongle and SMA antenna)

Problem solved. It is due to a buggy driver. Try the following command and wifi seems to work well without disconnecting. echo "blacklist rtl8192cu" | sudo tee -a /etc/modprobe.d/blacklist.conf


Edimax worked out of the box. Drivers are already in image, so no need to install anything extra. Pleasant surprise.



PyTorch
https://forums.developer.nvidia.com/t/pytorch-for-jetson-nano-version-1-5-0-now-available/72048

