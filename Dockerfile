FROM nvcr.io/nvidia/l4t-base:r32.3.1

# Install OpenCv

RUN apt update
RUN DEBIAN_FRONTEND=noninteractive  apt upgrade -y
#RUN apt install -y build-essential cmake git libgtk2.0-dev pkg-config  libswscale-dev libtbb2 libtbb-dev
#RUN apt install -y python-dev python3-dev python-numpy python3-numpy
#RUN apt install -y curl
#
#RUN apt install -y  libjpeg-dev libpng-dev libtiff-dev libjasper-dev 
#RUN apt install -y libavcodec-dev libavformat-dev
#RUN apt install -y libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev
#RUN apt install -y libv4l-dev v4l-utils qv4l2 v4l2ucp libdc1394-22-dev
#
#RUN curl -L https://github.com/opencv/opencv/archive/4.1.0.zip -o opencv-4.1.0.zip
#RUN curl -L https://github.com/opencv/opencv_contrib/archive/4.1.0.zip -o opencv_contrib-4.1.0.zip
#
#RUN unzip opencv-4.1.0.zip 
#RUN unzip opencv_contrib-4.1.0.zip 
#RUN cd opencv-4.1.0/
#         && cmake     -D WITH_CUDA=ON \
#        -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib-4.1.0/modules \
#        -D WITH_GSTREAMER=ON \
#        -D WITH_LIBV4L=ON \
#        -D BUILD_opencv_python2=ON \
#        -D BUILD_opencv_python3=ON \
#        -D BUILD_TESTS=OFF \
#        -D BUILD_PERF_TESTS=OFF \
#        -D BUILD_EXAMPLES=OFF \
#        -D CMAKE_BUILD_TYPE=RELEASE \
#        -D CMAKE_INSTALL_PREFIX=/usr/local .. \
#        && make -j4 \
#        && make install

ADD install_tzdata.sh /tmp/install_tzdata.sh
RUN chmod -R 777 /tmp/install_tzdata.sh && /tmp/install_tzdata.sh

RUN apt install -y python3-opencv

CMD ["/bin/bash"]
