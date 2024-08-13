# Local Development
## Install

First, [Install docker with docker-compose.](https://docs.docker.com/compose/install/)

Then, clone the repository:
```
    git clone https://github.com/RobinLinus/snapdrop.git
    cd transferbyte
    docker-compose up -d
```
Now point your browser to `http://localhost:8080`.

- To restart the containers run `docker-compose restart`.
- To stop the containers run `docker-compose stop`.
- To debug the NodeJS server run `docker logs transferbyte_node_1`.


## Run locally by pulling image from Docker Hub

Have docker installed, then use the command:
```
    docker pull linuxserver/transferbyte
```

To run the image, type (if port 8080 is occupied by host use another random port <random port>:80):
```
    docker run -d -p 8080:80 linuxserver/transferbyte
```

[< Back](/README.md)
