![fuzzybox cover art](https://github.com/redavis22/fuzzybox/blob/c71e170d6add23a8f8445503757cf44227a523a4/0%20-%20fuzzy%20box.png)

# fuzzybox
Customer Container Image for COMP 726

## Download and Install Docker Desktop
```
https://www.docker.com/products/docker-desktop/
```

## Build
```
docker build -t fuzzybox .

```
## Disable ASLR on Host OS
```
sudo docker run -it --rm --privileged --pid=host fuzzybox
```



## Run

```
docker run -i -t fuzzybox /bin/bash

```
## Disable ASLR within Docker container
```
echo 0 |  tee /proc/sys/kernel/randomize_va_space
```

## Find Image

```
docker ps

```

## Copy local files to container

```

docker cp ~/[path to local file] [docker image ID]:[path to container folder]

#example

docker cp ~/Downloads/fuzzme 64e5b693ab96:/home

```
