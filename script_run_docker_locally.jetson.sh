sudo docker build -t ml . -f Dockerfile.jetson
sudo docker run -it --rm --runtime nvidia --network host -v `pwd`:/myworkdir ml

