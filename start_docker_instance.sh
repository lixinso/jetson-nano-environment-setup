sudo docker build -t devicequery .
sudo docker run -it --runtime nvidia -v `pwd`:/myworkdir devicequery

