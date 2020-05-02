
# https://forums.developer.nvidia.com/t/pytorch-for-jetson-nano-version-1-5-0-now-available/72048


# Install PyTorch
wget https://nvidia.box.com/shared/static/ncgzus5o23uck9i5oth2n8n06k340l6k.whl -O torch-1.4.0-cp36-cp36m-linux_aarch64.whl
apt-get install -y python3-pip libopenblas-base libopenmpi-dev
pip3 install  Cython
pip3 install numpy torch-1.4.0-cp36-cp36m-linux_aarch64.whl


# Install TorchVision
apt-get install -y libjpeg-dev zlib1g-dev
git clone --branch v0.5.0 https://github.com/pytorch/vision torchvision   # see below for version of torchvision to download
cd torchvision
python3 setup.py install
cd ../  # attempting to load torchvision from build dir will result in import error
pip3 install 'pillow<7' # not needed for torchvision v0.5.0+
