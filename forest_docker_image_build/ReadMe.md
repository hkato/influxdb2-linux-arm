# 1st download tgz files

From https://bitbucket.org/choekstra/influxdb2-linux-arm/downloads/


### then build docker img

```
docker build -t sequentialread/influxdb:2.1.1-armv7 .

docker push sequentialread/influxdb:2.1.1-armv7
```

## NOTE!!! THIS WILL NOT HAVE ALL THE NICE CONFIG STUFF THAT THE OFFICIAL IMAGE HAS!

See config example here: https://git.sequentialread.com/forest/sequentialread-caddy-config/src/commit/11b555a1474a82f8cceefc27002530c365d4b4fc/docker-compose.yml#L318-L344