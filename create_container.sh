# docker run -v [host dir:container dir] -it -p [port] -h [hostname] --name="container name" IMAGE COMMAND

docker run -v ~/Desktop/NTUH/:/NTUH/ -it -p 8888:8888 -h "hcc" --name="NTUH" jupyterlab:latest bash

# Access jupyter lab through local docker
# 1. run juptyer lab in docker
# 2. go to browser and enter localhost:[port]
# 3. login with tokens