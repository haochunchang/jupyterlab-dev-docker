# jupyterlab-dev-docker

This repo is modified from https://github.com/danielbdias/jupyterlab-docker-image

It provide a Ubuntu 16.04 image to use Jupyter Lab with Python 3 and nodejs kernels.

Modify the `docker-compose.yml` file to install any libs in python3 you want to use in Jupyter Lab (like `pandas`, `matplotlib` and `numpy`) and starts Jupyter Lab in port 9000.

## Build docker image

To build this image, you just need to run the command:

```
docker-compose build .
```

## Run the container
```bash
# docker run -v [host dir:container dir] -it -p [port] -h [hostname] --name="container name" IMAGE COMMAND
# For example  
docker run -v ~/Desktop/:/ -it -p 8888:8888 -h "hcc" --name="dev" jupyterlab-dev-docker_services:latest bash
```

## Access jupyter lab through local docker
```bash
docker attach "container name"
# In docker
juptyer lab --allow-root --ip=0.0.0.0
# Then go to any browser and enter localhost:[port]
# Login with tokens printed in terminal
```
