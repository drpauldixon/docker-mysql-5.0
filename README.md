# Run MySQL 5.0 via docker

This is a quick and dirty hack to try and get some crusty old "enterprise" software running on modern hardware. 

### Build

```
docker build -t centos:5.0.95 .
```

### Push (optional)

```
docker tag centos:5.0.95 myrepo/centos:5.0.95
docker push
```

### Run

As this was stolen (and mangled) from [https://github.com/mysql/mysql-docker](https://github.com/mysql/mysql-docker) see the README there for full details about how to run.

To run via the locally built image and expose the MySQL port on 127.0.0.1:3306 only:

```
docker run --name mysql -p 127.0.0.1:3306:3306 -e MYSQL_ROOT_PASSWORD=bobbins -d mysql:5.0.95
```

To run via your repo and expose the MySQL port on 3306 (all interfaces):

```
docker run --name mysql -p 127.0.0.1:3306:3306 -e MYSQL_ROOT_PASSWORD=bobbins -d myrepo/mysql:5.0.95
```

### Logs

View the startup logs:

```
docker logs mysql
```

### Stop

```
docker stop mysql
```

### Start

```
docker start mysql
```

### Remove the container

Assuming the container is stopped (see above)...

```
docker rm mysql
```

### Dockerhub

A pre-built image is availabe here: [https://hub.docker.com/r/reducible/mysql/tags/](https://hub.docker.com/r/reducible/mysql/tags/)

```
docker run --name mysql -p 127.0.0.1:3306:3306 -e MYSQL_ROOT_PASSWORD=bobbins -d reducible/mysql:5.0.95
```

**Use at your own risk!**
