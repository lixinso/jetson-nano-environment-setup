FROM nvcr.io/nvidia/l4t-ml:r32.4.2-py3


RUN apt update
RUN apt upgrade -y
RUN apt install -y vim 
RUN apt install -y telnet
RUN apt install -y pandoc
RUN apt install -y pandoc-citeproc

#RUN pip3 install --upgrade setuptools pip



RUN mkdir /myworkdir
VOLUME ["/myworkdir"]
WORKDIR /myworkdir

#CMD ["/bin/bash"]
