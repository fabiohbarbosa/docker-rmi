# Docker RMI #
> Remove all docker untagged images

## Clone this repository
```sh
git clone https://github.com/fabiohbarbosa/docker-rmi.git /opt/docker-rmi
```

## Creating binary
```sh
cd /opt/docker-rmi/
sudo ln -sf `pwd`/docker-rmi.sh /usr/local/bin/docker-rmi
sudo chmod +x /usr/local/bin/docker-rmi
```

## Execute docker-rmi
```sh
docker-rmi
```
