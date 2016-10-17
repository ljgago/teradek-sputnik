
# Teradek Sputnik - Docker

* [`2.6.1`, `latest` (Dockerfile)](https://github.com/ljgago/teradek-sputnik/blob/master/Dockerfile)

### For use:

``` bash
docker run -d -p 1957:1957 -p 5111:5111 -p 554:554 \
-v $DATA_FOLDER:/data/ -v $LOG_FOLDER:/var/log/ \
-it --name sputnik --restart=always ljgago/teradek-sputnik
```

### For webui go:

``` html
http://your-ip:1957
```

## Manual build

### Build the Sputnik container image:

```
docker build -t teradek:sputnik:latest .
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

You can get Teradek Sputnik install from here:

``` bash
file = teradek-sputnik_2.6.1.r27115_amd64.deb
md5sum = 96d45748c49c333898c570d1d13d2402
link = https://mega.nz/#!5RVQxAxB!-vFyYWVOLQtGxZ2ZVyyYUOuxDsZU2twlxtXLuS9EiWk
```

