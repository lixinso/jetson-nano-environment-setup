sudo docker build -t ml . -f Dockerfile.ml
sudo docker run -it --rm --runtime nvidia --network host -v `pwd`:/myworkdir ml

