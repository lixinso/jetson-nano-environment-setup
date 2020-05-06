# jetson-nano-environment-setup

## Hardware

- Board
- WIFI [EDUP Mini WiFi Dongle for pcDuino v1/Raspberry Pi
](https://www.amazon.com/gp/product/B00JXP7QAA/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)  :Not the recommended one
- SD Card [Samsung (MB-ME512GA/AM) 512GB 100MB/s (U3) MicroSDXC Evo Select Memory Card with Adapter
](https://www.amazon.com/gp/product/B07MKSGZM6/ref=ppx_yo_dt_b_asin_title_o01_s00?ie=UTF8&psc=1)
- Battery




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

**This one seems working** ==>
Problem solved. It is due to a buggy driver. Try the following command and wifi seems to work well without disconnecting. 
```
echo "blacklist rtl8192cu" | sudo tee -a /etc/modprobe.d/blacklist.conf
```

Edimax worked out of the box. Drivers are already in image, so no need to install anything extra. Pleasant surprise.



PyTorch
https://forums.developer.nvidia.com/t/pytorch-for-jetson-nano-version-1-5-0-now-available/72048

- Jetson Nano Remote Desktop Share
https://medium.com/@bharathsudharsan023/jetson-nano-remote-vnc-access-d1e71c82492b


- Monitor GPU Memory

```
https://pypi.org/project/jetson-stats/
sudo pip3 install jetson-stats
jtop
```

## + Swap

```
https://www.jetsonhacks.com/2019/11/28/jetson-nano-even-more-swap/

$ zramctl
$ git clone https://github.com/JetsonHacksNano/resizeSwapMemory
$ cd resizeSwapMemory
$ ./setSwapMemorySize.sh -g 8
```

# Ref

https://developer.nvidia.com/embedded/downloads#?search=cudnn

https://developer.nvidia.com/embedded/jetpack

https://developer.nvidia.com/embedded/twodaystoademo
https://github.com/dusty-nv/jetson-inference#system-setup


https://ngc.nvidia.com/catalog/containers?orderBy=modifiedDESC&pageNumber=0&query=%20label%3A%22Jetson%22&quickFilter=containers&filters=


https://ngc.nvidia.com/catalog/containers/nvidia:l4t-pytorch
https://ngc.nvidia.com/catalog/containers/nvidia:l4t-ml
https://ngc.nvidia.com/catalog/containers/nvidia:l4t-tensorflow

```
docker pull nvcr.io/nvidia/l4t-ml:r32.4.2-py3
sudo docker run -it --rm --runtime nvidia --network host nvcr.io/nvidia/l4t-ml:r32.4.2-py3
```

https://gitlab.com/nvidia
