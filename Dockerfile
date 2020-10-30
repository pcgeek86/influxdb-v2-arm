FROM arm64v8/ubuntu

ENV INFLUX_URL=https://dl.influxdata.com/influxdb/releases/influxdb_2.0.0-rc.3_arm64.deb
ENV INFLUX_FILE=influxdb_2.0.0-rc.3_arm64.deb

RUN apt-get update && apt-get upgrade --yes \
  && apt-get install wget --yes \
  && wget -nv --show-progress --progress=bar:force:noscroll $INFLUX_URL \
  && dpkg --install $INFLUX_FILE

EXPOSE 8086

ENTRYPOINT ["influxd", "run"]
