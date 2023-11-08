FROM arm32v7/debian:bookworm-slim as extractor

COPY influxdb2-v2.1.1-linux-armv7l.tar.gz /influxdb2-v2.1.1-linux-armv7l.tar.gz
COPY influxdb2-client-v2.2.1-linux-armv7l.tar.gz /influxdb2-client-v2.2.1-linux-armv7l.tar.gz

RUN tar -xvf influxdb2-v2.1.1-linux-armv7l.tar.gz

RUN tar -xvf influxdb2-client-v2.2.1-linux-armv7l.tar.gz

FROM arm32v7/debian:bookworm-slim 

COPY --from=extractor /influx /bin/influx
COPY --from=extractor /influxd /bin/influxd

ENTRYPOINT ["/bin/influxd"]