## Docker environment:
```sh
$ docker build . -t cpm
$ docker run -v $(pwd):/home -it cpm /bin/sh
```