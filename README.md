
# Teradek Sputnik - Docker

* [`2.10.4`, `latest` (Dockerfile)](https://github.com/ljgago/teradek-sputnik/blob/805827175a6528439a00b4c3c53c291f3544cdd8/Dockerfile)
* [`2.9.0`, (Dockerfile)](https://github.com/ljgago/teradek-sputnik/blob/069098874260ed61f3fd17790c662ff843f70f97/Dockerfile)
* [`2.8.0`, (Dockerfile)](https://github.com/ljgago/teradek-sputnik/blob/6f324f3de4e1952450e3f292a24ab389be46b5f8/Dockerfile)
* [`2.7.3`, (Dockerfile)](https://github.com/ljgago/teradek-sputnik/blob/7cf30527c1b2d7d98ba44edb63b714a2e2eab60f/Dockerfile)
* [`2.6.1`, (Dockerfile)](https://github.com/ljgago/teradek-sputnik/blob/55e8b570ff8b8ea91f2deefea77695f62f5266f0/Dockerfile)

### For use:

``` bash
docker run -d -p 1957:1957 -p 5111:5111 -p 554:554 \
-v $DATA_FOLDER:/data/ -v $LOG_FOLDER:/var/log/ \
-it --name sputnik --restart=always ljgago/teradek-sputnik
```

### For WebUI go:

``` html
http://your-ip:1957
```

## Manual build

### Build the Sputnik container image:

```
docker build -t teradek-sputnik:latest .
```

### Run the Sputnik container:

```
docker run -d -p 1957:1957 -p 5111:5111 -p 554:554 \
-v $DATA_FOLDER:/data/ -v $LOG_FOLDER:/var/log/ \
-it --name sputnik --restart=always teradek-sputnik
```

### If you need go inside the Sputnik image (the container must be running):

```
docker exec -it sputnik /bin/bash
```

